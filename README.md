# tango.vim

A dark Vim/Neovim color scheme based on
[onedark.vim](https://github.com/joshdick/onedark.vim), with colors from the
[tango theme](http://tango.freedesktop.org/Tango_Desktop_Project)

## Installation

1. Install the theme using your Vim plug-in manager of choice (or manually, by
   placing `colors/tango.vim` in your `~/.vim/colors/` directory and
   `autoload/tango.vim` in your `~/.vim/autoload/` directory.)

   The theme also supports being installed as a Vim 8 package. Simply clone this
   repository into `~/.vim/pack/*/opt/` (so that the local path to this README
   would end up being `~/.vim/pack/*/opt/tango.vim/README.md`) and add
   `packadd! tango.vim` to your `~/.vimrc`. (The `*` in the path can be any
   value; see `:help packages` for more information.)

2. If you use Vim in a terminal, do the following to test whether your terminal
   emulator supports [24-bit/"true"
   color](https://gist.github.com/XVilka/8346728), then add relevant `~/.vimrc`
   configuration if so:

   _Note: GUI (non-terminal) Vim will always display 24-bit color regardless of
   the configuration done in this step._

   Run the following snippet in your shell:

   ```shell
   printf "\x1b[38;2;255;100;0mTRUECOLOR\x1b[0m\n"
   ```

   If your terminal emulator **does NOT display the word `TRUECOLOR` in red**,
   it does not support 24-bit color. If you don't want to switch to a different
   terminal emulator that [supports 24-bit
   color](https://gist.github.com/XVilka/8346728), **proceed to step 3**. (After
   installation, the [`g:tango_termcolors` option](#options) may interest
   you.)

   If your terminal emulator displays the word `TRUECOLOR` **in red**, it
   supports 24-bit color, and you should add the following lines to your
   `~/.vimrc` to enable 24-bit color terminal support inside Vim.

   (If you use [tmux](https://tmux.github.io/), be sure to view the tmux-related
   notes in the first few lines.)

   ```vim
   "Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
   "If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
   "(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
   if (empty($TMUX))
     if (has("nvim"))
       "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
       let $NVIM_TUI_ENABLE_TRUE_COLOR=1
     endif
     "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
     "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
     " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
     if (has("termguicolors"))
       set termguicolors
     endif
   endif
   ```

3. Add the following to your `~/.vimrc` (below any lines you may have added in
   steps 1 and 2):

   ```vim
   syntax on
   colorscheme tango
   ```

## Options

**Note:** All options should be set **before** the `colorscheme tango

* `g:tango_termcolors` **(see [Troubleshooting](#troubleshooting) (below)
  for more information about this option)**: Set to `256` for 256-color
  terminals (the default), or set to `16` to use your terminal emulator's native
  16 colors.

* `g:tango_terminal_italics`: Set to `1` if your terminal emulator supports
  italics; `0` otherwise (the default).

* `g:tango_disable_background`: Set to `1` to disable the background for
  normal text (mainly so that the terminal emulator's transparency is not
  covered up); `0` to enable it (the default).

