$devtools = ["tmux", "vim", "curl", "git", "build-essential", "golang", "zsh"]

package { $devtools: ensure => "latest" }

include 'docker'


