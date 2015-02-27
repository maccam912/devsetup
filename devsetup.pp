$devtools = ["tmux", "vim", "curl", "git", "build-essential", "golang", "zsh"]

package { $devtools: ensure => "latest" }

exec {"add_zsh_config":
    command => "/bin/cd ~ && /usr/bin/wget https://raw.githubusercontent.com/maccam912/devsetup/master/zshrc && /bin/mv zshrc .zshrc",
    creates => "/home/admin/.zshrc"
}
