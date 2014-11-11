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
let g:syntastic_check_on_open = 1
let g:syntastic_javascript_checkers = ['fecs']
```

__Note: 请确认你已经安装了`syntastic`插件。__


