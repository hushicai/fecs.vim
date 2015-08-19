# fecs.vim

[syntastic](https://github.com/scrooloose/syntastic) plugin for [fecs](https://github.com/ecomfe/fecs).

## 用法

如果你正在用vundle：

```viml
Plugin 'hushicai/fecs.vim.git'
```

然后`:PluginInstall`安装之。

_实际上我们只需要把插件安装到`vim runtime directories`上即可。_

`.vimrc`配置示例：

```viml
" 不建议首次打开文件时进行检查
let g:syntastic_check_on_open = 0
" `:wq`时不进行检查，注意这跟`:w`不一样
let g:syntastic_check_on_wq = 0
" 如果你想在写文件时不进行检查，需要配置`passive`模式
" 在`passive`模式下，只有手动调用了`:SyntasticCheck`才会触发检查
" let g:syntastic_mode_map = {'mode': 'passive'} 
" 你可以配置一个快捷方式，用来快速检查当前文件
" nmap <silent> <F5> :SyntasticCheck<cr>
let g:syntastic_javascript_checkers = ['fecs']
let g:syntastic_javascript_fecs_args = "--reporter=baidu"
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"
```

__Note: 请确认你已经安装了`syntastic`插件。__

## 格式化

![](./screenshots/1.gif)

进入visual模式，选择要格式化的代码，然后输入`:FecsFormat`。

当然你也可以使用设置一个key map，比如：

```viml
vnoremap <unique><silent><leader>ff :call FecsFormat()<CR>
```

## 其他

`Errors`打开错误列表，在每一行上回车可以跳到对应的错误行。

`lclose`关闭错误列表。
