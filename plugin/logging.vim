" let g:indexlog = '~/Documents/vim_b_201009/bookindex/index.log'
" nnoremap <C-L><C-L> :<C-U>call LogLine(g:indexlog)<CR>
" let g:rindexlog = '~/Documents/vim_b_201009/bookindex/rindex.log'
" nnoremap <C-L><C-R> :<C-U>call LogLine(g:rindexlog)<CR>

if exists('loaded_logging')
  finish
endif
let loaded_logging = 1
let s:save_cpo = &cpo
set cpo&vim

function! LogLine(logfile)
    let l:line = getline('.')
    let l:fname = expand('%:p')
    execute "redir >> ". a:logfile
        echo l:fname. ':'. l:line
    redir END
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
finish

