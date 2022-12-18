if !isdirectory(expand('~/.vim/plugged/coc.nvim'))
    finish
endif


let g:coc_explorer_global_presets = {
\   'floating': {
\     'position': 'floating',
\     'open-action-strategy': 'sourceWindow',
\   },
\ }


" Some servers have issues with backup files, see #649
" set nobackup
" set nowritebackup

" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300

" always show signcolumns
set signcolumn=yes

" preferences
let g:coc_global_extensions = [
    \ 'coc-calc',
    \ 'coc-emmet',
    \ 'coc-eslint',
    \ 'coc-highlight',
    \ 'coc-marketplace',
    \ 'coc-eslint',
    \ 'coc-snippets',
    \ 'coc-yank',
    \ 'coc-explorer',
    \ 'coc-docker',
    \ 'coc-css',
    \ 'coc-stylelint',
    \ 'coc-styled-components',
    \ 'coc-html',
    \ 'coc-svg',
    \ 'coc-json',
    \ 'coc-phpls',
    \ 'coc-pyright',
    \ 'coc-sh',
    \ 'coc-sql',
    \ 'coc-tsserver',
    \ 'coc-tslint-plugin',
    \ 'coc-react-refactor',
    \ 'coc-vimlsp',
    \ 'coc-xml',
    \ 'coc-yaml',
    \ 'coc-tailwindcss',
    \ 'coc-spell-checker',
    \ 'coc-cspell-dicts',
    \ 'coc-diagnostic',
    \ 'coc-db',
    \ 'coc-fish',
    \ ]

" coc-yank
call coc#config('yank', {
    \ 'highlight.enable': 0,
    \ 'enableCompletion' : 0
    \})

" coc-explorer
call coc#config('explorer', {
    \ 'file.tabCD': 1,
    \ 'file.reveal.auto': 0,
    \ 'explorer.icon.enableNerdFont': 1,
    \ 'icon.enableNerdfont': 1,
    \})

" coc-emmet
call coc#config('emmet', {
    \ 'includeLanguages': { 'phtml': 'php' },
    \ 'showAbbreviationSuggestions': 0,
    \ })

" coc-snippets
call coc#config('snippets', {
    \ 'userSnippetsDirectory': '~/.vim/plugged/vim-snippets'
    \ })

" sql
call coc#config('sql', {
    \ 'formatOptions': {'tabWidth': 4 }
    \ })


if exists('g:coc_node_path')
    call coc#config('npm', {
        \ 'binPath': substitute(g:coc_node_path, 'node$', 'npm', '')
        \ })
endif

if has('nvim')
    " Highlight symbol under cursor on CursorHold
    autocmd CursorHold * silent call CocActionAsync('highlight')
endif

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end
