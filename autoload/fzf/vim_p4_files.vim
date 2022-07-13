let s:cpo_save = &cpo 

let s:bin_dir = expand('<sfile>:p:h:h:h').'/bin/'

function! fzf#vim_p4_files#perforce_files(...)
    let l:root_path = ''
    if a:0 == 1
        let l:root_path = a:1
    endif
    echom l:root_path
    call fzf#run(fzf#wrap('vim-p4-files', fzf#vim#with_preview(
                \ {'source' : s:bin_dir.'get_files.sh '. l:root_path}
                \ )))
endfunction

let &cpo = s:cpo_save
unlet s:cpo_save
