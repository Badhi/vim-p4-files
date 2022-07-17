# vim-p4-files
Fast file search in perforce using Fzf

## Introduction

This plugin is inspired by the operation GFiles in [fzf.vim](https://github.com/junegunn/fzf.vim) where it is possible to query files in the git repository using the git ls-files command

Similarly, this plugin would do the same on a perforce repository using the p4 files and p4 where commands. Since we are using perforce commands and the execution happens through perforce the file query would happen fast compared to a normal linux find command

## Usage

### For Vim/Neovim using Fzf
To start querying files on the perforce repository, Enter

    :VF


![p4_files_query_2](https://user-images.githubusercontent.com/10277051/178671397-ded56164-a60f-4feb-8630-c0eb25e37755.gif)

### For Neovim using Telescope

Add the following config in setup to load the extension in [Telescope](https://github.com/nvim-telescope/telescope.nvim)

    require'telescope'.load_extension('vim_p4_files')

To query files invoke through Telescope

    :Telescope vim_p4_files
    
![vim_p4_files_telescope](https://user-images.githubusercontent.com/10277051/179400653-87025290-6ba2-4a67-b9ef-09d90d7de41a.gif)
