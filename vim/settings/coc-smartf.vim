nmap <space>f <Plug>(coc-smartf-forward)
nmap <space>F <Plug>(coc-smartf-backward)
nmap <space>; <Plug>(coc-smartf-repeat)
nmap <space>, <Plug>(coc-smartf-repeat-opposite)

augroup Smartf
  autocmd User SmartfEnter :hi Conceal gui=NONE guifg=NONE guibg=NONE guifg=#EBCB8B
augroup end

