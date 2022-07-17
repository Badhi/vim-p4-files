local pickers = require 'telescope.pickers'
local finders = require 'telescope.finders'
local conf = require 'telescope.config'.values

local M = {}

local curr_dir = debug.getinfo(1, 'S').source:sub(2)
local path_tbl = {}

for token in string.gmatch(curr_dir, "[^/]+") do
    table.insert(path_tbl, token)
end

local root_dir = '/'
for i = 1,#path_tbl - 5 do
    root_dir = root_dir .. path_tbl[i] .. '/'
end

M.p4_files = function(opts)
    opts = opts or {}
    local relative_dir = opts.path or ''
    local cmd = { root_dir .. 'bin/get_files.sh',
                    relative_dir }
    print(vim.inspect(cmd))
    pickers.new(opts, {
        prompt_title = "Perforce File Finder",
        finder = finders.new_oneshot_job(
            cmd,
            opts
        ),
        sorter = conf.file_sorter(opts),
        previewer = conf.file_previewer(opts),
    }):find()
end

return M
