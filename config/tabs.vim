" Only show file names in tabs; hide directory
function! Tabline() abort
    let l:line = ''
    let l:current = tabpagenr()

    for l:i in range(1, tabpagenr('$'))
        if l:i == l:current
            let l:line .= '%#TabLineSel#'
        else
            let l:line .= '%#TabLine#'
        endif

        let l:bufnr = tabpagebuflist(l:i)[tabpagewinnr(l:i) - 1]
        let l:label = fnamemodify(bufname(l:bufnr), ':t')
        " Add + if the buffer is modified
        if getbufvar(l:bufnr, '&modified')
            let l:label .= '+'
        endif

        let l:line .= '%' . i . 'T' " Starts mouse click target region.
        let l:line .= '  ' . l:label . '  '
    endfor

    let l:line .= '%#TabLineFill#'
    let l:line .= '%T' " Ends mouse click target region(s).

    return l:line
endfunction

set tabline=%!Tabline()

