local M = {}
function trim(s)
	return s:match("^%s*(.*%S)") or ""
end
function M:peek()
	-- Define the Fish command you want to run
	local fish_command = "getGlowStyle"

	-- Construct the command to execute in Fish
	local command = 'fish -c "' .. fish_command .. '"'

	-- Open a pipe to the command
	local handle = io.popen(command)
	local glowStyle = handle:read("*a") -- Read the output of the command
	handle:close()

	-- Print the result

	local child = Command("glow")
		:args({
			"-s",
			trim(glowStyle),
			"--width",
			tostring(self.area.w),
			tostring(self.file.url),
		})
		:stdout(Command.PIPED)
		:stderr(Command.PIPED)
		:spawn()

	if not child then
		return self:fallback_to_builtin()
	end

	local limit = self.area.h
	local i, lines = 0, ""
	repeat
		local next, event = child:read_line()
		if event == 1 then
			return self:fallback_to_builtin()
		elseif event ~= 0 then
			break
		end

		i = i + 1
		if i > self.skip then
			lines = lines .. next
		end
	until i >= self.skip + limit

	child:start_kill()
	if self.skip > 0 and i < self.skip + limit then
		ya.manager_emit(
			"peek",
			{ tostring(math.max(0, i - limit)), only_if = tostring(self.file.url), upper_bound = "" }
		)
	else
		lines = lines:gsub("\t", string.rep(" ", PREVIEW.tab_size))
		ya.preview_widgets(self, { ui.Paragraph.parse(self.area, lines) })
	end
end

function M:seek(units)
	local h = cx.active.current.hovered
	if h and h.url == self.file.url then
		local step = math.floor(units * self.area.h / 10)
		ya.manager_emit("peek", {
			tostring(math.max(0, cx.active.preview.skip + step)),
			only_if = tostring(self.file.url),
		})
	end
end

function M:fallback_to_builtin()
	local _, bound = ya.preview_code(self)
	if bound then
		ya.manager_emit("peek", { tostring(bound), only_if = tostring(self.file.url), upper_bound = "" })
	end
end

return M
