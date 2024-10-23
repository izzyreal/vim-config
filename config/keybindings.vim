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

