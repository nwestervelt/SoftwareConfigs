# Set the shell prompt
export PS1="[\u@\h:\W]$ "

# Enable directory expansion (fixes tab completion)
shopt -s direxpand

alias createAudioSink="pactl load-module module-null-sink media.class=Audio/Sink sink_name=my-sink channel-map=stereo"

