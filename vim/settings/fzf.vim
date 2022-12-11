if executable('rg')
  let $FZF_DEFAULT_COMMAND = 'rg -g "!.git" --files --ignore-vcs --hidden'
endif

" let g:fzf_buffers_jump = 0
let g:fzf_preview_window = ''

" BuffersDelete
function! s:list_buffers()
    redir => list
    silent ls
    redir END
    return split(list, "\n")
endfunction

function! s:delete_buffers(lines)
    execute 'bwipeout' join(map(a:lines, {_, line -> split(line)[0]}))
endfunction

command! BuffersDelete call fzf#run(fzf#wrap({
    \ 'source': s:list_buffers(),
    \ 'sink*': { lines -> s:delete_buffers(lines) },
    \ 'options': '--multi --reverse --bind ctrl-a:select-all+accept'
    \ }))
