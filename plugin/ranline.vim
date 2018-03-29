function! LineJump()
    let s:lineCount = line('$')
    let s:ranLine = system('shuf -i 1-' . s:lineCount . ' -n 1')
    call cursor(s:ranLine[0], 0)
endfunction

command LineJump call LineJump()
