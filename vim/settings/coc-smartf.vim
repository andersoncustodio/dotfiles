nmap <space>f <Plug>(coc-smartf-forward)
nmap <space>F <Plug>(coc-smartf-backward)
nmap <space>; <Plug>(coc-smartf-repeat)
nmap <space>, <Plug>(coc-smartf-repeat-opposite)

augroup Smartf
  autocmd User SmartfEnter :hi Conceal ctermfg=220 guifg=#EBCB8B
  autocmd User SmartfLeave :hi Conceal ctermfg=239 guifg=#504945
augroup end
