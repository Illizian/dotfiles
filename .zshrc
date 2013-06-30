# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Set name of the theme to load.
ZSH_THEME="robbyrussell"

# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

# Customize to your needs...
export PATH=/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/bin/aws:/home/alex/Android/adt-bundle-linux-x86_64-20130219/sdk/platform-tools/:$HOME/.rvm/bin

# Source nvm
. /usr/local/bin/nvm/nvm.sh

# My Aliases
alias http="python -m SimpleHTTPServer"
alias ipconfig="ifconfig | grep 'inet addr'"
alias getip="curl icanhazip.com"
alias adbChrome="adb forward tcp:9222 localabstract:chrome_devtools_remote"

BitCrypt() {
	if [ ! $1 ] ; then
		print "Usage BitCrypt [mount/unmount]"
		return 1
	elif [[ $1 = "mount" || $1 = "-m" ]] ; then
		print "Mounting encrypted store"
		encfs ~/BitSync/Encrypted ~/BitCrypt
	elif [[ $1 = "unmount" || $1 = "-u" ]] ; then
		print "Unmounting encrypted store"
		fusermount -u ~/BitCrypt
	elif [ $1 ]; then
		print "Usage BitCrypt [mount/unmount]"
		return 1
	fi
}

curlHead() {
	if [ ! $1 ] ; then
		print "Usage: \n$ curlHead url useragent"
		return 1
	elif [ $2 ] ; then
		curl -s -D - $1 -A $2 -o /dev/null
	else
		curl -s -D - $1 -o /dev/null
	fi
}