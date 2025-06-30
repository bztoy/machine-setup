# .VIMRC setup

1. copy /etc/vimrc of each particular distro to ~/.vimrc
2. create a swap dir at ~/.vim/swapfiles/
3. create new directories ~/.vimbackup and ~/.vimdir
4. create a symbolic link ./cvimrc to ~/.cvimrc
5. add source ~/.cvimrc in ~/.vimrc
6. setup g:clang_library_path = '/usr/lib/x86_64-linux-gnu/libclang-14.so.1' in ~/.vimrc
