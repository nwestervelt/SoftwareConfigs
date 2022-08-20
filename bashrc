# Set the shell prompt
export PS1="\[\033[37m\]\[\033[1;44m\][\u@\h:\W]$\[\033[0m\] "

# Create alias for upgrading software on openSUSE: Tumbleweed systems
os=$(cat /etc/os-release | grep ^NAME | sed s/^NAME\=// | sed s/\"//g)
if [[ $os = "openSUSE Tumbleweed" ]]; then
    alias zup="sudo zypper refresh && sudo zypper dup --no-recommends"
fi
# Enable directory expansion (fixes tab completion)
shopt -s direxpand
