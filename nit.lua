-- languages on computer
local languages = {
    -- value = key
    ["js"] = "javascript",
    ["sh"] = "bash",
    ["css"] = "css",
    ["rx"] = "regex",
    ["sql"] = "sql",
    ["rs"] = "rust",
    ["ts"] = "typescript",
    ["cs"] = "csharp",
    ["go"] = "golang",
    ["ph"] = "php",
    ["ra"] = "rails",
    ["th"] = "three.js",
    ["vi"] = "vim",
    ["gi"] = "git",
    ["lu"] = "lua",
    ["no"] = "node.js",
    ["py"] = "python",
    ["ht"] = "html",
    ["rb"] = "ruby",
    ["re"] = "react",
}

first_arg = arg[1]
second_arg = arg[2]

local function has_value (tab, val)
    -- for index, value
    for i, v in pairs(languages) do
        if i == val then
            return true
        end
    end

    return false
end

if has_value(languages, first_arg) and second_arg ~= nil then
    dir = string.format("~/code/noti/languages/%s/%s", first_arg, second_arg) 
    command = string.format("vim %s", dir)
    os.execute(command)
else
    print("either not in lang or second is nil")
end
