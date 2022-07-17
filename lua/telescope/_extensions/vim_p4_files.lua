local p4_get_files_pickers = require'telescope._extensions.vim_p4_files.pickers'

return require'telescope'.register_extension {
    exports = {
        p4_get_files = p4_get_files_pickers.p4_files
    }
}
