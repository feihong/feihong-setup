export PATH=$PATH:~/bin:.

# VIRTUALENV
# Source: https://virtualenvwrapper.readthedocs.org/en/latest/install.html#shell-startup-file
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/projects
source /usr/local/bin/virtualenvwrapper.sh

# NODE

export NVM_DIR=~/.nvm
alias startnvm='source $(brew --prefix nvm)/nvm.sh && nvm use 4'

# ALIASES

alias firefox='/Applications/Firefox.app/Contents/MacOS/firefox-bin'
alias hal='echo "say \"what do you think you'\''re doing, dave?\"" | /usr/bin/osascript'
alias done='afplay "/Library/Audio/Apple Loops/Apple/iLife Sound Effects/Animals/Bark.caf"'
alias hey='echo "say \"嘿哟\"" | /usr/bin/osascript'
alias curse='echo "say \"哎呦我的妈啊\"" | /usr/bin/osascript'

# FUNCTIONS

function speak() {
    cat <<-EOF | /usr/bin/osascript
    say "我会讲中文，而且讲的非常好"
EOF
}
