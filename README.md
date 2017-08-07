# settings
Folder to save the settings of the pc (Vim & PowerShell)

* vim/.vim goes into ~ and vim/.vimrc has to be in the same path
* gvim/vimfiles goes into the User folder and gvim/.vimrc and gvim/.gvimrc has to be in the same path
* WindowsPowerShell goes into User/Documents

The plugin installed are:
* pathogen to manage all the plugins
* tlib_vim
* vim-addon-mw-utils
* vim-snipmate
* vim-snippets

Moreover in gvim are also installed:
* vim-colors-solarized
* vim-fugitive (for git)
* vim-latex

If you want to install the setting using _**Bash on Ubuntu on Windows**_ follow these steps:
  1. Download the zip from Github;
  2. Navigate inside the terminal, go into **Download** folder and then enter:
    ````
    cd /mnt/c/Users/<your_username>/Downloads
    unzip settings-master.zip
    ````
  3. Then for use the new setttings in **gvim (windows)** enter:
    ```
    cp -a setting-master/gvim/. ../.
    ```
  4. In order to use the new settings for **vim (linux)** enter:
    ```
    cp -a setting-master/vim/. ~
    ```
  5. The WindowsPowerShell folder contains setting to have vim in **WindowsPowerShell**, so to use it enter:
    ```
    cp -a setting-master/WindowsPowerShell/. ../Documents/.
    ```

If you want to install the setting using _**Windows PowerShell**_ follow these steps:
  1. Download the zip from Github;
  2. Navigate inside the terminal, go into **Download** folder and then enter:
    ```
    cd $HOME\Downloads
    unzip .\settings-master.zip
    ```
  3. Then for use the new setttings in **gvim (windows)** enter:
    ```
    cp .\setting-master\gvim\* ..\.
    ```
  4. The WindowsPowerShell folder contains setting to have vim in **WindowsPowerShell**, so to use it enter:
    ```
    cp .\setting-master\WindowsPowerShell\* ..\Documents
    ```
