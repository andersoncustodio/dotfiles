map <silent> \li :set list!<bar>set nolist?<cr>
map <silent> \hl :set hls!<bar>set nohls?<cr>
map <silent> \wr :set wrap!<bar>set wrap?<cr>

noremap <silent> \ve :let &virtualedit = (&virtualedit == "all" ? "" : "all")<bar>set virtualedit?<CR>

" Spell
set spellcapcheck=[.?!]\_[\])'"^I ]\+
map <silent> \pt :set spell spelllang=pt<cr>
map <silent> \en :set spell spelllang=en<cr>
map <silent> \sp :set spell!<cr>

map <silent>\tr :call StripTrailingWhitespaces()<CR>

" Shortcuts for nav buffer
nmap <silent> <leader><Tab> :b#<cr>


"""""""""""
" coc.vim "
"""""""""""

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Using CocFzfList
" Show all diagnostics
nnoremap <silent> <leader><space>a  :<C-u>CocFzfList diagnostics<cr>
" Manage extensions
nnoremap <silent> <leader><space>e  :<C-u>CocFzfList extensions<cr>
" Show commands
nnoremap <silent> <leader><space>c  :<C-u>CocFzfList commands<cr>
" Find symbol of current document
nnoremap <silent> <leader><space>o  :<C-u>CocFzfList outline<cr>
" Search workspace symbols
nnoremap <silent> <leader><space>s  :<C-u>CocFzfList symbols<cr>
" Do default action for next item.
nnoremap <silent> <leader><space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <leader><space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <leader><space>p  :<C-u>CocFzfListResume<CR>

