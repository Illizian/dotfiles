dotfiles
========

Installation
------------

+ Fork this repo
+ Clone your fork into your home directory (e.g. ~/.dotfiles)

**Activate Configs**
Run the included installer ```$ sh ~/.dotfiles/install.sh``` or manually:

+ xfce4 ```$ ln -s ~/.dotfiles/xfce4 ~/.config/xfce4```
+ zshrc ```$ ln -s ~/.dotfiles/zsh/zshrc ~/.zshrc```
+ sublime-text-3 ```$ ln -s ~/.dotfiles/sublime-text-3/Preferences.sublime-settings ~/.config/sublime-text-3/Packages/User/Preferences.sublime-settings```

Auto-Update
-----------

The installation includes a autoupdate function that will check the directory for changes and allow you to auto commit & upload these changes at each start.