-- args saved in table arg

print(table.concat(arg,", "))

for i, v in ipairs(arg) do
    print(v)
end

-- languages on computer

local languages = {
    -- value = key
    "js" = "javascript"
    "sh" = "bash"
    "css" = "css"
    "rx" = "regex"
    "sql" = "sql"
    "rs" = "rust"
    "ts" = "typescript"
    "cs" = "csharp"
    "go" = "golang"
    "ph" = "php"
    "ra" = "rails"
    "th" = "three.js"
    "vi" = "vim"
    "gi" = "git"
    "lu" = "lua"
    "no" = "node.js"
    "py" = "python"
    "ht" = "html"
    "rb" = "ruby"
    "re" = "react"
}

-- command should be noti -n re name-of-file  

-- move to directory of folder
-- open vim name-of-file  
-- when vim done, exit
