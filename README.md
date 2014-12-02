dotfiles
========

Installation
------------

+ Fork this repo
+ Clone your fork into your home directory (e.g. ~/.dotfiles)
+ Replace the ~/.zshrc file with a symlink to zsh/zshrc (e.g. ```$ ln -s ~/.dotfiles/zsh/zshrc ~/.zshrc```)

**Additional Configs**
+ xfce4 ```$ ln -s ~/.dotfiles/xfce4 ~/.config/xfce4```

Auto-Update
-----------

The installation includes a autoupdate function that will check the directory for changes and allow you to auto commit & upload these changes at each start.