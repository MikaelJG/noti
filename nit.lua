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
print(first_arg)
print(second_arg)
print(string.format("This is the first arg : %s", first_arg))

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
    -- language = first_arg
    -- vim ~/code/noti/first_arg/name-of-file
    print("both in languages and second exists")
else
    print("either not in lang or second is nil")
end


--if second_arg == nil then
--    print("its nil")
--else
--    print("not nil")
--end
-- its name of file


-- command should be nit re name-of-file  

-- move to directory of folder
-- open vim name-of-file  
-- when vim done, exit
