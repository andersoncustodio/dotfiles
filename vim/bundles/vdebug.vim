" vdebug settings
let g:vdebug_options = {
    \ "break_on_open": 0
    \ }

let g:vdebug_keymap = {
    \ "run": "<C-F5>",
    \ "run_to_cursor": "<C-F9>",
    \ "step_over": "<C-F2>",
    \ "step_into": "<C-F3>",
    \ "step_out": "<C-F4>",
    \ "close" : "<C-F6>",
    \ "detach" : "<C-F7>",
    \ "set_breakpoint" : "<C-F10>",
    \ "get_context" : "<C-F11>",
    \ "eval_under_cursor" : "<C-F12>",
    \ "eval_visual" : "<Leader><C-e>",
    \ }

Plug 'vim-vdebug/vdebug'
