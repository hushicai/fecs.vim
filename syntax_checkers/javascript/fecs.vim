if exists("g:loaded_syntastic_javascript_fecs_checker")
    finish
endif
let g:loaded_syntastic_javascript_fecs_checker = 1

if !exists('g:syntastic_javascript_fecs_sort')
    let g:syntastic_javascript_fecs_sort = 1
endif

let s:save_cpo = &cpo
set cpo&vim

function! SyntaxCheckers_javascript_fecs_IsAvailable() dict
    return executable(self.getExec())
endfunction

function! SyntaxCheckers_javascript_fecs_GetLocList() dict
    let makeprg = self.makeprgBuild({'args': ''})
    let errorformat = 
        \'%Efecs  ERROR → line %l\, col %c: %m,' .
        \'%Wfecs  WARN → line %l\, col %c: %m'

    let loclist = SyntasticMake({
        \ 'defaults': {'bufnr': bufnr('%')},
        \ 'makeprg': makeprg,
        \ 'errorformat': errorformat})

    for e in loclist
        let e['col'] += 1
    endfor

    return loclist
endfunction

call g:SyntasticRegistry.CreateAndRegisterChecker({
            \ 'filetype': 'javascript',
            \ 'name': 'fecs',
            \ 'returns': [0, 1]})

let &cpo = s:save_cpo
unlet s:save_cpo

" vim: set et sts=4 sw=4:
