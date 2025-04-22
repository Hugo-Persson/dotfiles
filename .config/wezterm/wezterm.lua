--
-- ██╗    ██╗███████╗███████╗████████╗███████╗██████╗ ███╗   ███╗
-- ██║    ██║██╔════╝╚══███╔╝╚══██╔══╝██╔════╝██╔══██╗████╗ ████║
-- ██║ █╗ ██║█████╗    ███╔╝    ██║   █████╗  ██████╔╝██╔████╔██║
-- ██║███╗██║██╔══╝   ███╔╝     ██║   ██╔══╝  ██╔══██╗██║╚██╔╝██║
-- ╚███╔███╔╝███████╗███████╗   ██║   ███████╗██║  ██║██║ ╚═╝ ██║
--  ╚══╝╚══╝ ╚══════╝╚══════╝   ╚═╝   ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝
-- A GPU-accelerated cross-platform terminal emulator
-- https://wezfurlong.org/wezterm/

local b = require("background")
local cs = require("color_scheme")
-- local f = require("font")
local k = require("keys")
local h = require("helpers")
local s = require("ssh")

local wezterm = require("wezterm")
local act = wezterm.action
local is_dark = h.is_dark()

local theme = is_dark and "dark" or "light"
local config = {
  send_composed_key_when_left_alt_is_pressed = false,
  send_composed_key_when_right_alt_is_pressed = true,
  max_fps = 120,
  default_cwd = "/Users/hugo/.config/nix",

  -- default_prog = { "/opt/homebrew/bin/sesh" },
  background = {
    b.get_background(1, 1),
  },

  font_size = 12,

  line_height = 1.1,
  --font = wezterm.font_with_fallback({ "JetBrains Mono", "JetBrainsMono Nerd Font Mono" }),
  font = wezterm.font("JetBrainsMono Nerd Font Mono"),

  color_scheme = cs.get_color_scheme(),

  window_padding = {
    left = 10,
    right = 10,
    top = 10,
    bottom = 0,
  },

  set_environment_variables = {
    -- THEME_FLAVOUR = "latte",
    TERM = "xterm-256color",
    BAT_THEME = h.is_dark() and "Catppuccin Mocha" or "Catppuccin Latte",
    IS_DARK = h.is_dark() and "1" or "0",
    LC_ALL = "en_US.UTF-8",
  },

  -- general options
  adjust_window_size_when_changing_font_size = false,
  debug_key_events = false,
  enable_tab_bar = true,
  native_macos_fullscreen_mode = false,
  window_close_confirmation = "NeverPrompt",
  window_decorations = "RESIZE",
  hide_tab_bar_if_only_one_tab = true,

  -- keys
  keys = {
    k.cmd_key(".", k.multiple_actions(":ZenMode")),
    -- k.cmd_key("H", act.SendKey({ mods = "CTRL", key = "h" })),
    -- k.cmd_key("J", act.SendKey({ mods = "CTRL", key = "j" })),
    -- k.cmd_key("K", act.SendKey({ mods = "CTRL", key = "k" })),
    -- k.cmd_key("K", act.SendKey({ mods = "CTRL", key = "k" })),
    -- k.cmd_key("L", act.SendKey({ mods = "CTRL", key = "l" })),
    k.cmd_key("P", k.multiple_actions(":GoToCommand")),
    k.cmd_key("p", k.multiple_actions(":GoToFile")),
    k.cmd_key("j", k.multiple_actions(":GoToFile")),
    k.cmd_key("q", k.multiple_actions(":q")),
    k.cmd_to_tmux_prefix("r", "r"),
    k.cmd_to_tmux_prefix("1", "1"),
    k.cmd_to_tmux_prefix("2", "2"),
    k.cmd_to_tmux_prefix("3", "3"),
    k.cmd_to_tmux_prefix("4", "4"),
    k.cmd_to_tmux_prefix("5", "5"),
    k.cmd_to_tmux_prefix("6", "6"),
    k.cmd_to_tmux_prefix("7", "7"),
    k.cmd_to_tmux_prefix("8", "8"),
    k.cmd_to_tmux_prefix("9", "9"),
    k.cmd_to_tmux_prefix("`", "n"),
    k.cmd_to_tmux_prefix("b", "v"),
    k.cmd_to_tmux_prefix("C", "C"),
    k.cmd_to_tmux_prefix("d", "D"),
    k.cmd_to_tmux_prefix("G", "G"),
    k.cmd_to_tmux_prefix("g", "g"),
    k.cmd_to_tmux_prefix("f", "f"),
    k.cmd_to_tmux_prefix("F", "F"),
    k.cmd_to_tmux_prefix("K", "T"),
    k.cmd_to_tmux_prefix("k", "T"),
    k.cmd_to_tmux_prefix("l", "L"),
    k.cmd_to_tmux_prefix("n", '"'),
    k.cmd_to_tmux_prefix("N", "%"),
    k.cmd_to_tmux_prefix("o", "o"),
    k.cmd_to_tmux_prefix("T", "!"),
    k.cmd_to_tmux_prefix("t", "c"),
    k.cmd_to_tmux_prefix("W", "x"),
    k.cmd_to_tmux_prefix("z", "z"),
    k.cmd_to_tmux_prefix("Z", "Z"),
    k.cmd_to_tmux_prefix("q", "q"),
    k.cmd_to_tmux_prefix("d", "d"),
    k.cmd_to_tmux_prefix("u", "u"),
    k.cmd_to_tmux_prefix("h", "h"),

    -- floax
    k.cmd_to_tmux_prefix("i", "p"),

    k.cmd_key("v", act.PasteFrom("Clipboard")),
    k.cmd_key(
      "R",
      act.Multiple({
        act.SendKey({ key = "\x1b" }), -- escape
        k.multiple_actions(":source %"),
      })
    ),

    k.cmd_key(
      "s",
      act.Multiple({
        act.SendKey({ key = "\x1b" }), -- escape
        k.multiple_actions(":w"),
      })
    ),
    k.cmd_key("P", wezterm.action.ActivateCommandPalette),
    k.cmd_key(
      "p",
      act.InputSelector({
        fuzzy = true,
        action = wezterm.action_callback(function(window, pane, id, label)
          wezterm.log_info("theme", theme)
          if not id and not label then
            wezterm.log_info("cancelled")
          else
            window:perform_action(
              act.SpawnCommandInNewTab({
                args = {
                  "/home/hugo/init-ssh-connection.sh",
                  theme,
                },
                -- args = { "/usr/bin/ssh" },
                set_environment_variables = {},
                domain = { DomainName = "SSH:" .. id },
              }),
              pane
            )
          end
        end),
        title = "Select SSH Host",
        choices = s.get_ssh_options(),
      })
    ),

    {
      mods = "ALT ",
      key = "q",
      action = act.Multiple({
        act.SendKey({ key = "\x1b" }), -- escape
        k.multiple_actions(":qa!"),
      }),
    },
    {
      mods = "SHIFT |  CMD",
      key = "r",
      action = k.multiple_actions("exec fish"),
    },

    {
      mods = "SHIFT",
      key = "RightArrow",
      action = act.ActivateTabRelative(1),
    },

    {
      mods = "SHIFT",
      key = "LeftArrow",
      action = act.ActivateTabRelative(-1),
    },
  },
}

return config
