-- SPECIFY THE DIRECTORY TO NOTI
-- ex: local dir = "~/path/to/noti/folder"
local noti_dir = "~/code/noti" 

-- languages on computer
local languages = {
    -- value = key
    ["js"] = "javascript",
    ["sh"] = "bash",
    ["css"] = "css",
    ["rx"] = "regex",
    ["r"] = "r",
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
    ["sa"] = "sass",
    ["mo"] = "mongodb",
    ["tm"] = "tmux",
}

local definitions = {
    "aa",
    "agile",
    "angular",
    "api",
    "assembly",
    "async",
    "b2b",
    "b2c",
    "bash",
    "buddy",
    "class",
    "client",
    "cluster",
    "cms",
    "colima",
    "compile",
    "container",
    "controller",
    "craftcms",
    "craft",
    "crm",
    "daemon",
    "databasedump",
    "debug",
    "docker",
    "dom",
    "dump",
    "dynamic",
    "elasticsearch",
    "erp",
    "express",
    "fish",
    "functional",
    "gnu ",
    "gui ",
    "highlevel ",
    "hrm",
    "https ",
    "ideas",
    "ignore ",
    "imperative ",
    "inheritance ",
    "itsm ",
    "kanban ",
    "kibana ",
    "kubernetes ",
    "lowlever ",
    "macros ",
    "model ",
    "mongodb ",
    "mvc ",
    "mysql ",
    "netsuite",
    "node",
    "object",
    "posix",
    "postgresql",
    "psa",
    "react ",
    "regex ",
    "rest ",
    "sass",
    "script ",
    "scrum ",
    "server",
    "sockets",
    "sqlite",
    "static",
    "svelte",
    "sync",
    "tailwind",
    "tcpsocket ",
    "tcp ",
    "tdd ",
    "twig",
    "type",
    "unixsockets",
    "unix",
    "view ",
    "virtualbox ",
    "vue ",
    "waterfall",
    "webassembly ",
    "wordpress ",
    "zsh ",
    "zz"
}
-- consider definitions as default with
-- nit buddy
-- create definition, in noti/definition/$1.txt

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
elseif hash_hasnot_value(languages, first_arg) and second_arg == nil then
    dir = string.format("%s/definitions/%s", noti_dir, first_arg) 
    command = string.format("vim %s.txt", dir)
    print(command)
    os.execute(command)
else
    print("something went wrong")
end
