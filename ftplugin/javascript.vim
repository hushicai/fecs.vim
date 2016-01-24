" fecs format

function! FecsFormat() range
    let cmd = 'fecs format --stream=true --type=js'
    " http://vim.wikia.com/wiki/Newlines_and_nulls_in_Vim_script
    let @a = system(cmd, getline(a:firstline, a:lastline))
    " exec a:firstline . ',' . a:lastline . 'd'
    exec 'normal gv"a]p'
    " remove last line
    exec 'normal Gdd'
endfunction

command! -range -nargs=* FecsFormat <line1>,<line2>call FecsFormat()
