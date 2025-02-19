" Let Ctrl + s open Find Symbol popup
nmap <C-s> <Plug>(YCMFindSymbolInWorkspace)<CR>

" Let Enter accept the first visible completion suggestion
inoremap <expr> <CR> (pumvisible() ? "\<C-n>\<C-y>" : "\<CR>")

" jump to the previous function
nnoremap <silent> [f :call
\ search('\(\(if\\|for\\|while\\|switch\\|catch\)\_s*\)\@64<!(\_[^)]*)\_[^;{}()]*\zs{', "bw")<CR>

" jump to the next function
nnoremap <silent> ]f :call
\ search('\(\(if\\|for\\|while\\|switch\\|catch\)\_s*\)\@64<!(\_[^)]*)\_[^;{}()]*\zs{', "w")<CR>

if system('grep -q "Debian" /etc/os-release && echo $XDG_SESSION_TYPE') =~ "wayland"
    autocmd TextYankPost * if (v:event.operator == 'y' || v:event.operator == 'd') | silent! execute 'call system("wl-copy", @")' | endif
    nnoremap p :let @"=substitute(system("wl-paste --no-newline"), '<C-v><C-m>', '', 'g')<cr>p
endif

if system('grep -q "Debian" /etc/os-release && echo $XDG_SESSION_TYPE') =~ "wayland"
    autocmd TextYankPost * if (v:event.operator == 'y' || v:event.operator == 'd') | silent! execute 'call system("wl-copy", @")' | endif
    nnoremap p :let @"=substitute(system("wl-paste --no-newline"), '<C-v><C-m>', '', 'g')<cr>p
endif
