function! OutSidebar()
    let is_sidebar = index(['nerdtree', 'coc-explorer', 'undotree', 'tagbar'], &ft) != -1

    if (is_sidebar && winnr('$') > 1)
        exe "normal! \<c-w>\<c-w>"
    endif
endfunction


noremap <silent> \li :set list<bar>set nolist?<CR>
noremap <silent> \hl :set hls!<bar>set nohls?<CR>
noremap <silent> \rnu :set rnu!<bar>set rnu?<CR>
noremap <silent> \wr :set wrap!<bar>set wrap?<CR>
noremap <silent> \ve :let &virtualedit = (&virtualedit == "all" ? "" : "all")<bar>set virtualedit?<CR>
noremap <silent> \tr :call StripTrailingWhitespaces()<CR>
noremap <silent> \ig :IndentLinesToggle<CR>


" Explorer
map <silent><leader>et :CocCommand explorer
            \ --no-reveal-when-open
            \ --sources=file+
            \ <cr>

" PickAColor
noremap <silent><leader>rg :PickRGB<CR>
noremap <silent><leader>he :PickHEX<CR>
noremap <silent><leader>hs :PickHSL<CR>
noremap <silent><leader>ha :PickRAW<CR>

" gitgutter
noremap \ggt :GitGutterToggle<CR>
noremap \ggp <Plug>(GitGutterPreviewHunk)
nmap ]h <Plug>(GitGutterNextHunk)
nmap [h <Plug>(GitGutterPrevHunk)

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
nnoremap <silent><leader>w<C-p> :call OutSidebar()<bar>:Windows<CR>
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
      \ coc#pum#visible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? "\<C-p>" : "\<C-h>"

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
nmap <leader>= <Plug>(coc-format-selected)<CR>
command! -nargs=0 Format :call CocActionAsync('format')


" Use <c-n> to trigger completion.
inoremap <silent><expr> <c-Space> coc#refresh()
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph

" Use <CR> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
let g:enter_indent_default_keymap = 0
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=EnterIndent()\<CR>"

" Remap <C-f> and <C-b> for scroll float windows/popups.
nnoremap <expr><C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
nnoremap <expr><C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
inoremap <expr><C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<Right>"
inoremap <expr><C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<Left>"

" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction-cursor)
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
nmap <space>f <Plug>(coc-smartf-forward)
nmap <space>F <Plug>(coc-smartf-backward)
nmap <space>; <Plug>(coc-smartf-repeat)
nmap <space>, <Plug>(coc-smartf-repeat-opposite)

" coc-yank
nnoremap <silent> <leader>p :<C-u>CocFzfList yank<CR>

""""""""""""""""
" TagbarToggle "
""""""""""""""""
nnoremap <leader>tt :TagbarToggle<CR>


""""""""""""""""""
" UndotreeToggle "
""""""""""""""""""
nnoremap <leader>ut :call OutSidebar()<bar>:MundoToggle<CR>


""""""""""""
" Database "
""""""""""""
noremap <leader>db :DBUIToggle<CR>


"""""""""""
" Buffers "
"""""""""""
noremap <silent><Leader>bdd :call OutSidebar()<bar>:Bdelete<CR>


noremap Q q
