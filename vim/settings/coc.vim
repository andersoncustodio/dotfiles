" Some servers have issues with backup files, see #649
" set nobackup
" set nowritebackup

" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

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
    \ 'coc-prettier',
    \ 'coc-smartf',
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
    \ 'coc-python',
    \ 'coc-sh',
    \ 'coc-sql',
    \ 'coc-tsserver',
    \ 'coc-tslint-plugin',
    \ 'coc-react-refactor',
    \ 'coc-vimlsp',
    \ 'coc-xml',
    \ 'coc-yaml',
    \ 'coc-tailwindcss',
    \ ]

" coc-yank
call coc#config('yank', {
    \ 'highlight.enable': 0,
    \ 'enableCompletion' : 0
    \})

" coc-explorer
call coc#config('explorer', {
    \ 'file.autoReveal': 0,
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

