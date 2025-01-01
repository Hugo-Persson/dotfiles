
return function(target, args, completion)
  
  local output = ""
  local error = ""
  -- Runs in background very fast
  local yabai_task = hs.task.new(target, function(err, stdout, stderr)
    print("err:" .. err, "stdout:" .. stdout, "stderr:" .. stderr)
  end, function(task, stdout, stderr)
    -- print("stdout:"..stdout, "stderr:"..stderr)
    if stdout ~= nil then
      output = output .. stdout
      print("stdout:" .. stdout)
    end
    if stderr ~= nil then
      error = error .. stderr
      print("stderr:" .. stderr)
    end
    return true
  end, args)
  if type(completion) == "function" then
    yabai_task:setCallback(function()
      completion(output, error)
    end)
  end
  yabai_task:start()
  print("Task started")
end
