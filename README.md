# vim-p4-files
Fast file search in perforce using Fzf

## Introduction

This plugin is inspired by the operation GFiles in [fzf.vim](https://github.com/junegunn/fzf.vim) where it is possible to query files in the git repository using the git ls-files command

Similarly, this plugin would do the same on a perforce repository using the p4 files and p4 where commands. Since we are using perforce commands and the execution happens through perforce the file query would happen fast compared to a normal linux find command

# Usage

To start querying files on the perforce repository, Enter

    :VF


![p4_files_query_2](https://user-images.githubusercontent.com/10277051/178671397-ded56164-a60f-4feb-8630-c0eb25e37755.gif)
