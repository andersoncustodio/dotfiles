nnoremap <silent> <leader>p  :<C-u>CocFzfList yank<cr>

call coc#config('yank', {
    \ 'highlight.enable': 0,
    \ 'enableCompletion': 0,
    \})
