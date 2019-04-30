[TOC]
### 说明
参考[mentor](https://git.coding.net/zkdfbb/vim.git)的vim配置，加入了一些自己的东西
#### 1. 刷题专用
将样例写入 {filename}.in ，运行f4，他会自动编译并将结果输出到 {filename}.out
### 一键安装命令
```
pip install autopep8 flake8 && rm -rf ~/.vimrc ~/.vim && git clone --recursive https://github.com/wyk0517/kk_vim.git ~/.vim && ln -s ~/.vim ~/.config/nvim && (echo | vim +PlugInstall +qall) && (echo | vim +UpdateRemotePlugins)
```
### 安装方法

```
curl -s https://dev.tencent.com/u/zkdfbb/p/vim/git/raw/master/install.sh | sh
```

### 插件说明

#### vim-plug

管理第三方插件，初始化

```
echo | vim +PlugInstall +qall    # 安装
echo | vim +PlugUpdate +qall    # 升级
```

#### tagbar

需要安装ctags

```
sudo apt-get install ctags
```

大纲式导航，包含类/方法/变量等, 可以选中快速跳转到目标位置。使用方法：

```
:TagbarToggle
```

快捷键：`F9`

#### nerdtree

显示树形目录。使用方法：

```
:NERDTreeToggle
```

快捷键：`F8`


#### ale

代码异步检测插件，要求vim版本 >= 8.0

python代码格式化快捷键：`Ctrl+m`

#### deoplete

代码异步补全插件，要求vim版本 >= 8.0

#### deoplete-jedi

用于补全python第三方库的类，函数等

#### deoplete-clangx

用于补全c / c++ 函数，需要安装clang

#### vim-airline

状态栏美化插件

#### vim-colorschemes

字体颜色美化插件

#### 语法高亮插件

1. vim-markdown
2. pig.vim
3. vim-scala
4. nginx.vim
5. vim-vue

#### tabular

自动对齐代码，选中代码块，如原代码：

```
one = 1
two = 2
three = 3
four = 4
```

选中之后输入:Tab /= ，会格式化成

```
one   = 1
two   = 2
three = 3
four  = 4
```

#### emmet-vim

用于快速编写html，如输入缩略词组div#page>ul>li*3然后按Ctrl+y+,即可展开成html代码

#### xptemplate 重复代码插件

在insert模式下输入片段代码的名字(如switch)，然后按<C-\>(即Ctrl+\)

然后按tab、shift tab前后更改高亮显示的内容

#### incsearch.vim

增强vim的搜索功能

#### vim-jsbeautify

javascript排版插件。使用用法：

```
:call JsBeautify()
```

#### vim-signify

vim版本控制，同时支持Git 和 Svn，高亮当前修改

### 快捷键

1. F1:帮助(默认)
2. F2:切换窗口
3. F3:去行尾空格(普通模式)
3. F4:acm刷题模式，从{filename}.in读入，结果输出到{filename}.out
4. F5:编译运行
6. F6:调试运行
7. F7:粘贴模式
8. F8:打开/关闭NERDRree
9. F9:打开/关闭Tagbar
10. F10:Python代码格式化
11. F11:最大化(默认)
12. F12:自动插入文件头部声明
13. Ctrl+m: 代码格式化
14. Ctrl+l: 打开/关闭语法检查
15. Ctrl+k: 跳转到上一个语法错误位置
14. Ctrl+j: 跳转到下一个语法错误位置
16. Ctrl+\: 跳转到函数定义处
17. Ctrl+b: 向上翻一页
18. Ctrl+f: 向下翻一页
19. b: 光标向前移动一个单词
20. w: 光标向后移动一个单词
21. ,b: 插入/删除python断点
22. :wq 保存退出, :qq 直接退出，:w!! 强制写入
23. Ctrl+x 重新载入文件(等于:e!)
24. Ctrl+c 复制到系统粘贴板
