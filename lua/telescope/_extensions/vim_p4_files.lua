local p4_get_files_pickers = require'telescope._extensions.vim_p4_files.pickers'

return require'telescope'.register_extension {
    exports = {
        vim_p4_files = p4_get_files_pickers.p4_files
    }
}
