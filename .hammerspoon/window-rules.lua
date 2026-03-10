local AEROSPACE = "/opt/homebrew/bin/aerospace"
local DELAY = 0.5 -- seconds to wait for AeroSpace to process first

-- Tracks which rules have been applied to which windows (windowId-ruleIndex)
local applied = {}

---@alias Position "center"|"top-left"|"top-right"|"bottom-left"|"bottom-right"

---@class Coords
---@field x number
---@field y number

---@class Size
---@field w number
---@field h number

---@class Action
---@field layout? string          -- aerospace layout command (floating/tiling)
---@field workspace? string       -- aerospace move-node-to-workspace target
---@field size? Size              -- absolute pixel size
---@field position? Position|Coords -- named position or coords

---@class Rule
---@field app_id? string   -- exact bundle ID match
---@field app? string      -- substring match on app name
---@field title? string    -- Lua pattern match on window title
---@field action Action

---@type Rule[]
-- Rules table: first match wins
-- Title-specific rules should come before app-only rules for the same app
local rules = {
  -- Slack Huddle: floating + centered
  {
    app_id = "com.tinyspeck.slackmacgap",
    title = "Huddle",
    action = {
      layout = "floating",
      size = { w = 400, h = 600 },
      position = "center",
    },
  },

  -- Workspace assignments
  { app_id = "com.github.wez.wezterm",                     action = { workspace = "W" } },
  { app_id = "com.apple.dt.Xcode",                         action = { workspace = "3" } },
  { app_id = "com.google.android.studio",                   action = { workspace = "3" } },
  { app_id = "com.microsoft.VSCodeInsiders",                action = { workspace = "3" } },
  { app_id = "org.whispersystems.signal-desktop",           action = { workspace = "C" } },
  { app_id = "com.hahainteractive.GoodTask-setapp",         action = { workspace = "T" } },
  { app_id = "com.readdle.CalendarsLite-setapp",            action = { workspace = "T" } },
  { app_id = "com.spotify.client",                          action = { workspace = "1" } },
  { app_id = "md.obsidian",                                 action = { workspace = "O" } },
  { app_id = "simulator",                                   action = { layout = "tiling", workspace = "X" } },

  -- Floating layout
  { app_id = "com.macpaw.CleanMyMac-setapp",                action = { layout = "floating" } },
  { app_id = "com.apple.weather",                           action = { layout = "floating" } },
  { app_id = "com.nikolaeu.numi-setapp",                    action = { layout = "floating" } },
  { app_id = "com.godspeedapp.Godspeed-setapp",             action = { layout = "floating" } },
  { app_id = "com.riotgames.RiotGames.RiotClient",          action = { layout = "floating" } },
  { app_id = "com.riotgames.LeagueofLegends.LeagueClientUx", action = { layout = "floating" } },
  { app_id = "com.fredrikburmester.streamyfin",             action = { layout = "floating" } },
  { app_id = "com.apple.accessibility.universalAccessAuthWarn", action = { layout = "floating" } },
  { app_id = "io.github.keycastr",                          action = { layout = "floating" } },
  { app_id = "com.lowtechguys.Clop",                        action = { layout = "floating" } },
  { app_id = "com.jetbrains.toolbox",                       action = { layout = "floating" } },
  { app_id = "art.ginzburg.MiddleClick",                    action = { layout = "floating" } },
  { app_id = "com.unsplash.Wallpapers",                     action = { layout = "floating" } },
  { app_id = "ch.protonmail.drive",                         action = { layout = "floating" } },
  { app_id = "pro.betterdisplay.BetterDisplay",             action = { layout = "floating" } },
  { app_id = "software.micropixels.BatFi",                  action = { layout = "floating" } },
  { app_id = "com.autodesk.fusion360",                      action = { layout = "floating" } },
  { app_id = "com.okta.mobile",                             action = { layout = "floating" } },
  { app_id = "cc.ffitch.shottr",                            action = { layout = "floating" } },
}

--- Compute an {x, y} point from a named position, screen frame, and window size.
local function resolvePosition(name, screenFrame, w, h)
  local pad = 10
  local positions = {
    ["center"] = {
      x = screenFrame.x + (screenFrame.w - w) / 2,
      y = screenFrame.y + (screenFrame.h - h) / 2,
    },
    ["top-left"] = {
      x = screenFrame.x + pad,
      y = screenFrame.y + pad,
    },
    ["top-right"] = {
      x = screenFrame.x + screenFrame.w - w - pad,
      y = screenFrame.y + pad,
    },
    ["bottom-left"] = {
      x = screenFrame.x + pad,
      y = screenFrame.y + screenFrame.h - h - pad,
    },
    ["bottom-right"] = {
      x = screenFrame.x + screenFrame.w - w - pad,
      y = screenFrame.y + screenFrame.h - h - pad,
    },
  }
  return positions[name]
end

--- Run an aerospace CLI command asynchronously.
local function aerospace(args)
  hs.task.new(AEROSPACE, nil, args):start()
end

--- Check if a window matches a rule.
local function matches(win, rule)
  local app = win:application()
  if not app then return false end

  if rule.app_id then
    if app:bundleID() ~= rule.app_id then return false end
  end

  if rule.app then
    if not string.find(app:name() or "", rule.app, 1, true) then return false end
  end

  if rule.title then
    if not string.find(win:title() or "", rule.title) then return false end
  end

  return true
end

--- Apply size and position to a window.
local function applyGeometry(win, action)
  local size = action.size
  local pos = action.position

  if size then
    win:setSize(hs.geometry.size(size.w, size.h))
  end

  if pos then
    local frame = win:frame()
    local w = frame.w
    local h = frame.h
    local screenFrame = win:screen():frame()

    local point
    if type(pos) == "string" then
      point = resolvePosition(pos, screenFrame, w, h)
    elseif type(pos) == "table" then
      point = { x = pos.x, y = pos.y }
    end

    if point then
      win:setTopLeft(hs.geometry.point(point.x, point.y))
    end
  end
end

--- Apply a matched rule to a window.
local function applyRule(win, rule)
  local action = rule.action
  local winId = win:id()

  -- AeroSpace CLI actions first
  if action.layout then
    aerospace({ "layout", action.layout, "--window-id", tostring(winId) })
  end
  if action.workspace then
    aerospace({ "move-node-to-workspace", action.workspace, "--window-id", tostring(winId) })
  end

  -- Size/position after a short delay so AeroSpace finishes
  if action.size or action.position then
    hs.timer.doAfter(0.3, function()
      local w = hs.window.get(winId)
      if w then
        applyGeometry(w, action)
      end
    end)
  end
end

--- Try to match and apply rules to a window.
local function processWindow(win)
  if not win or not win:id() then return end

  for i, rule in ipairs(rules) do
    if matches(win, rule) then
      local key = tostring(win:id()) .. "-" .. tostring(i)
      if applied[key] then return end
      applied[key] = true

      print("[window-rules] Matched rule " .. i .. " for: "
        .. (win:application():name() or "?") .. " - " .. (win:title() or "?"))
      applyRule(win, rule)
      return -- first match wins
    end
  end
end

-- Window filter: subscribe to creation, title change, and destruction
local wf = hs.window.filter.new(true)

wf:subscribe(hs.window.filter.windowCreated, function(win)
  hs.timer.doAfter(DELAY, function()
    processWindow(win)
  end)
end)

wf:subscribe(hs.window.filter.windowTitleChanged, function(win)
  processWindow(win)
end)

wf:subscribe(hs.window.filter.windowDestroyed, function(win)
  if not win or not win:id() then return end
  local prefix = tostring(win:id()) .. "-"
  for key, _ in pairs(applied) do
    if key:sub(1, #prefix) == prefix then
      applied[key] = nil
    end
  end
end)

print("[window-rules] Window rules loaded (" .. #rules .. " rules)")
