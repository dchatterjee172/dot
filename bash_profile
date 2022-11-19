source ~/.bashrc

export TERM="xterm-256color"
export PATH="/usr/local/opt/go@1.18/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/debajyotichatterjee/Downloads/google-cloud-sdk/path.bash.inc' ]; then . '/Users/debajyotichatterjee/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/debajyotichatterjee/Downloads/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/debajyotichatterjee/Downloads/google-cloud-sdk/completion.bash.inc'; fi
