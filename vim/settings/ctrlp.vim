let g:ctrlp_cmd = 'CtrlPBuffer'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_cache_dir = '~/.vim-tmp/ctrlp'
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_custom_ignore = {
\ 'dir':  '\.git$\|\.hg$\|\.svn\|vendor\|node_modules$',
\ 'file': '\.exe$\|\.so$\|\.dll$',
\ 'link': 'some_bad_symbolic_links',
\ }

map <silent>,<C-p> :CtrlPClearCache<CR>:CtrlP<CR>
