-- A simple profiler to help monitor plugin load times
-- Usage: require('config.profiler').enable()

local M = {}

M.enable = function()
  -- Store the start time
  local start_time = vim.loop.hrtime()
  
  -- Original require function
  local orig_require = _G.require
  
  -- Wrap the require function to measure timing
  _G.require = function(modname)
    local before = vim.loop.hrtime()
    local mod = orig_require(modname)
    local after = vim.loop.hrtime()
    
    local elapsed = (after - before) / 1000000 -- Convert to milliseconds
    
    -- Log modules that take more than 10ms to load
    if elapsed > 10 and modname:match("^[^%.]+%.") then
      vim.schedule(function()
        vim.notify(string.format("Slow module load: '%s' took %.2f ms", modname, elapsed), vim.log.levels.WARN)
      end)
    end
    
    return mod
  end
  
  -- Save startup stats
  vim.api.nvim_create_autocmd("VimEnter", {
    callback = function()
      local total = vim.loop.hrtime() - start_time
      local startup_file = vim.fn.stdpath("cache") .. "/startup_times.txt"
      
      -- Get the top 20 modules by load time
      local file = io.open(startup_file, "w")
      if file then
        file:write(string.format("Neovim startup completed in %.2f ms\n\n", total / 1000000))
        file:close()
        
        vim.notify(string.format("Neovim startup completed in %.2f ms", total / 1000000))
      end
    end,
  })
end

-- Add a function to check plugin usage
M.check_unused_plugins = function()
  -- Will be implemented when needed to track which plugins are actually used
end

return M
