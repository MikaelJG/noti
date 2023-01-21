-- SPECIFY THE DIRECTORY TO NOTI
-- ex: local dir = "~/path/to/noti/folder"
local noti_dir = "~/code/noti" 
local languages = require 'languages' 
local definitions = require 'definitions'

first_arg = arg[1]
second_arg = arg[2]

local function hash_has_value (tab, val)
    -- for index, value
    for i, v in pairs(languages) do
        if i == val then
            return true
        end
    end
    return false
end
local function hash_hasnot_value (tab, val)
    -- for index, value
    for i, v in pairs(languages) do
        if i == val then
            return false 
        end
    end
    return true 
end
--local function array_has_value (tab, val)
--    -- for index, value
--    for i, v in ipairs(definitions) do
--        if v == val then
--            return true
--        end
--    end
--
--    return false
--end

if hash_has_value(languages, first_arg) and second_arg ~= nil then
    dir = string.format("%s/languages/%s/%s", noti_dir, first_arg, second_arg) 
    command = string.format("vim %s.txt", dir)
    os.execute(command)
elseif hash_has_value(languages, first_arg) and second_arg == nil then
    print("second arg is nil")
elseif first_arg == "cli" and second_arg ~= nil then
    dir = string.format("%s/cli_tools/%s", noti_dir, second_arg) 
    command = string.format("vim %s.txt", dir)
    os.execute(command)
elseif first_arg == "lib" or first_arg == "libraries" then
    dir = string.format("%s/libraries/%s", noti_dir, second_arg) 
    command = string.format("vim %s.txt", dir)
    os.execute(command)
elseif first_arg == "frame" and second_arg ~= nil then
    dir = string.format("%s/frameworks/%s", noti_dir, second_arg) 
    command = string.format("vim %s.txt", dir)
    os.execute(command)
elseif hash_hasnot_value(languages, first_arg) and second_arg == nil then
    dir = string.format("%s/definitions/%s", noti_dir, first_arg) 
    command = string.format("vim %s.txt", dir)
    os.execute(command)
else
    print("something went wrong")
end
