let NERDTreeIgnore=['\.pyc$', '\.rbc$', '\~$']
let g:NERDTreeMouseMode = 2
let g:NERDTreeWinSize = 40
let g:NERDTreeWinPos = 'left'
let g:nerdtree_tabs_open_on_gui_startup = 0

nmap <silent> <f2> :NERDTreeToggle<CR>
nmap <silent> ,<f2> :NERDTreeFind<CR>
