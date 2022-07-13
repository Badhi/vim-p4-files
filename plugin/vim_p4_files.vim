if exists('g:loaded_fzf_vim_p4_files')
    finish
endif

let g:loaded_fzf_vim_p4_files = 1

command! -nargs=? -complete=file VF     :call fzf#vim_p4_files#perforce_files (<q-args>)
