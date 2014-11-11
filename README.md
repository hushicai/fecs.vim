# fecs.vim

syntastic plugin for fecs

# 用法

如果你正在用vundle：

```viml
Plugin 'hushicai/fecs.vim.git'
```

然后`:PluginInstall`安装之。

在`.vimrc`中配置：

```viml
" 打开文件时进行check，可能会比较慢
let g:syntastic_check_on_open = 1
" 写文件时进行check
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['fecs']
" 额外参数
let g:syntastic_javascript_fecs_args = "--reporter baidu"
" 改变提示符号
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"
```

__Note: 请确认你已经安装了`syntastic`插件。__


