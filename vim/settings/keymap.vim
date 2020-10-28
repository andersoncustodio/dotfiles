function! OutSidebar()
    let is_sidebar = index(['nerdtree', 'undotree', 'tagbar'], &ft) != -1

    if (is_sidebar && winnr('$') > 1)
        exe "normal! \<c-w>\<c-w>"
    endif
endfunction

noremap <silent> \li :set list<bar>set nolist?<CR>
noremap <silent> \hl :set hls!<bar>set nohls?<CR>
noremap <silent> \rnu :set rnu!<bar>set rnu?<CR>
noremap <silent> \wr :set wrap!<bar>set wrap?<CR>
noremap <silent> \ve :let &virtualedit = (&virtualedit == "all" ? "" : "all")<bar>set virtualedit?<CR>
noremap <silent> \pt :set spell spelllang=pt<CR>
noremap <silent> \en :set spell spelllang=en<CR>
noremap <silent> \sp :set spell!<CR>
noremap <silent> \tr :call StripTrailingWhitespaces()<CR>
noremap <silent> \ig :IndentLinesToggle<CR>

map <S-Insert> "+p

" NERDTree
map <leader>nt :NERDTreeToggle<cr>
map <leader>fnt :NERDTreeFind<cr>

" PickAColor
noremap <silent><leader>rg :PickRGB<CR>
noremap <silent><leader>he :PickHEX<CR>
noremap <silent><leader>hs :PickHSL<CR>
noremap <silent><leader>ha :PickRAW<CR>

" gitgutter
noremap \ggt :GitGutterToggle<CR>
noremap \ggp <Plug>(GitGutterPreviewHunk)

" CmdlineCompletion
cmap <silent> <c-x><c-p> <Plug>CmdlineCompletionBackward
cmap <silent> <c-x><c-n> <Plug>CmdlineCompletionForward

"""""""
" fzf "
"""""""
let g:fzf_commands_expect = 'alt-enter,ctrl-x'

nnoremap <silent><C-p> :call OutSidebar()<bar>:Buffers<CR>
nnoremap <silent><leader><C-p> :call OutSidebar()<bar>:Files<CR>
nnoremap <space><C-p> :call OutSidebar()<CR>:Files <C-R>=substitute(expand('%:p:h') . '/', getcwd() . '/', "", "")<CR>
nnoremap <silent><leader>h<C-p> :call OutSidebar()<bar>:History<CR>
nnoremap <silent><leader>t<C-p> :call OutSidebar()<bar>:Tags<CR>
nnoremap <silent><leader>l<C-p> :call OutSidebar()<bar>:Lines<CR>
nnoremap <silent><leader>ag<C-p> :call OutSidebar()<bar>:Ag<CR>
nnoremap <silent><leader>rg<C-p> :call OutSidebar()<bar>:Rg<CR>
nnoremap <silent><leader>bd<C-p> :BuffersDelete<CR>

nnoremap <silent><leader>: :Commands<CR>
nnoremap <silent>q: :History:<CR>
nnoremap <silent>q/ :History/<CR>

"""""""""""
" coc.vim "
"""""""""""

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction


" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>= <Plug>(coc-format-selected)
nmap <leader>= <Plug>(coc-format-selected)


" Use <c-n> to trigger completion.
inoremap <silent><expr> <c-n> coc#refresh()

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph

" Use <CR> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
let g:enter_indent_default_keymap = 0
inoremap <silent><expr> <CR> pumvisible() ? "\<C-y>" : "\<c-r>=EnterIndent()\<CR>"

" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
xmap <leader>ac  <Plug>(coc-codeaction-selected)
nmap <leader>qf  <Plug>(coc-fix-current)
imap <expr> <c-x><c-f> fzf#vim#complete#path('rg --files')

" Using CocFzfList
nnoremap <silent> <leader><space>a :<C-u>CocFzfList diagnostics<CR>
nnoremap <silent> <leader><space>e :<C-u>CocFzfList extensions<CR>
nnoremap <silent> <leader><space>c :<C-u>CocFzfList commands<CR>
nnoremap <silent> <leader><space>o :<C-u>CocFzfList outline<CR>
nnoremap <silent> <leader><space>s :<C-u>CocFzfList symbols<CR>
nnoremap <silent> <leader><space>j :<C-u>CocNext<CR>
nnoremap <silent> <leader><space>k :<C-u>CocPrev<CR>
nnoremap <silent> <leader><space>p :<C-u>CocFzfListResume<CR>

" coc-snippets
let g:coc_snippet_next = '<c-j>'
let g:coc_snippet_prev = '<c-k>'

imap <C-l> <Plug>(coc-snippets-expand)
vmap <C-j> <Plug>(coc-snippets-select)
imap <C-j> <Plug>(coc-snippets-expand-jump)
xmap <leader>x <Plug>(coc-convert-snippet)

" coc-smartf
map <space>f <Plug>(coc-smartf-forward)
map <space>F <Plug>(coc-smartf-backward)

" coc-yank
nnoremap <silent> <leader>p :<C-u>CocFzfList yank<CR>


""""""""""""""
" PickAColor "
""""""""""""""
nnoremap <silent>\rg :PickRGB<CR>
nnoremap <silent>\he :PickHEX<CR>
nnoremap <silent>\hs :PickHSL<CR>
nnoremap <silent>\ha :PickRAW<CR>

""""""""""""""""
" TagbarToggle "
""""""""""""""""
nnoremap <leader>tb :TagbarToggle<CR>

""""""""""""""""""
" UndotreeToggle "
""""""""""""""""""
nnoremap <leader>ut :UndotreeToggle<CR>

noremap Q q
