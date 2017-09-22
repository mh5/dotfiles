export PATH=$PATH:/sbin

alias glog='git log --pretty=format:"%N %Cred%h %Cgreen%s %Creset%an %Cred%ar %n %b%n" --graph --patience'
alias gdiff='git show --color --pretty=format:%b'
alias sep='for i in $(seq 1 $(tput cols)); do printf -; done'
alias wifire='sudo iwconfig wlan0 txpower off && sleep 5 && sudo iwconfig wlan0 txpower auto'

function g {
	grep -nirIF --exclude-dir='.*' --color=auto -- "$(echo $@)"
}

function patho {
  cd ~/.vim/bundle
  git clone "https://github.com/$1.git"
  cd -
}

function sayit {
  pico2wave -l=en-GB -w=/tmp/test.wav "$1"
  aplay /tmp/test.wav
  rm /tmp/test.wav
}
