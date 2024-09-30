" nnoremap <F5> :w<CR>:!gcc % -o %:r && ./%:r<CR>
nnoremap <F5> :w<CR>:!printf '\33c\e[3J' && gcc -g src/main/tetriz.c -o ./build/tetriz -lncurses -Ideps && ./build/tetriz<CR>
nnoremap <F6> :w<CR>:!clear && printf '\33c\e[3J' && gcc -g src/test/testriz.c -o ./build/testriz -lncurses -Ideps -Isrc/main && ./build/testriz<CR>
nnoremap <F7> :w<CR>:!clear && printf '\33c\e[3J' && gcc -g src/main/tetriz.c -o ./build/tetriz -lncurses -Ideps && lldb -o "process launch --tty $(tty)" ./build/tetriz<CR>
map <C-o> :NERDTreeToggle<CR>

" jump to the previous function
nnoremap <silent> [f :call
\ search('\(\(if\\|for\\|while\\|switch\\|catch\)\_s*\)\@64<!(\_[^)]*)\_[^;{}()]*\zs{', "bw")<CR>
" jump to the next function
nnoremap <silent> ]f :call
\ search('\(\(if\\|for\\|while\\|switch\\|catch\)\_s*\)\@64<!(\_[^)]*)\_[^;{}()]*\zs{', "w")<CR>

