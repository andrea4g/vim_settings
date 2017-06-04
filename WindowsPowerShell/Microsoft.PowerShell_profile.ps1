set-alias vim "C:/Program Files (x86)\Vim/vim80/vim.exe"

# To edit the Powershell Profile
# (Not that I'll remember this)
Function Edit-Profile
{
    vim $profile
}

# To edit Vim settings
Function Edit-Vimrc
{
    vim $HOME\.vimrc
}