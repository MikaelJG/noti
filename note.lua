-- args saved in table arg

print(table.concat(arg,", "))
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

for i, v in ipairs(arg) do
    print(v)
end

for i, v in pairs(languages) do
    -- print(.. v .. " - " .. i ..)
    print(string.format("The value of key %s is %s", k, v))
end


local function has_value (tab, val)
    for index, value in ipairs(tab) do
        if value[1] == val then
            return true
        end
    end

    return false
end

-- command should be noti -n re name-of-file  

-- move to directory of folder
-- open vim name-of-file  
-- when vim done, exit
