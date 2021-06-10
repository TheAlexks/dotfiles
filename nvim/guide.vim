Hello, fellow Linux user. If you're using my config of nvim, you should check this.

First, how to install neovim?

On Arch based distros:
	sudo pacman -S neovim

	Note: Make sure to enter neovim and not nvim, cuz, that's the name of the package.

On Debian/Ubuntu based distros:
	sudo apt/apt-get install neovim
	
	Note: Make sure to enter neovim and not nvim, cuz, that's the name of the package.

Second, you've probably noticed files airline.vim and onedark.vim.
Airline is a theme for airline, status line for nvim/vim.

If you want to use it you need to install that plugin. But, to install that plugin you need a plugin manager.

Before that, we need to make some changes.

1. Move the nvim dir to the ~/.config.
2. Make another dir called themes, we'll use it to store themes, as the name suggests.
3. Install a vim-plug, plugin manager.
4. Make another dir called vim-plug, and make a plugins.vim file in that dir.
5. Paste this in plugins.vim:

	" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'

call plug#end()

6. And now source it in init.vim. Tho, if you're using my config you'll see it's sourced.

And now, let's install a couple of plugins.

Theme | I am going to install onedark theme, it's pretty good, imo.

Inside of plugins.vim, paste this in: 
	Plug 'joshdick/onedark.vim'
We've already made a themes dir with onedark.vim file. Also, you need to source it in init.vim, but I've already done that for you.

Launch neovim and enter this:
	PlugInstall - this will install all plugins that aren't installed.

Status line | Airline

Inside of plugins.vim file, paste this in:
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'

Themes dir and airline.vim are already made and it's sourced in init.vim
Run PlugInstall and use it.

Credits to chrisatmachine, I've followed his tutorial, check his channel:

https://www.youtube.com/channel/UCS97tchJDq17Qms3cux8wcA

Allright, that's all. Thanks for using my config, have a nice day.
	- Alex aka theAwsomeHacker
