$devtools = ["tmux", "vim", "curl", "default-jre", "git", "python-pip", "build-essential", "golang", "zsh", "devscripts"]

package { $devtools: ensure => "latest" }

exec {"add_zsh_config":
    command => "/bin/cd ~ && /usr/bin/wget https://raw.githubusercontent.com/maccam912/devsetup/master/zshrc && /bin/mv zshrc .zshrc",
    creates => "/home/admin/.zshrc"
}

exec {"add_docker_and_friends":
    command => "/usr/bin/curl -sSL https://get.docker.com/ | sh && /usr/bin/sudo /usr/sbin/usermod -aG docker admin"
}

exec {"docker_machine":
    command => "/usr/bin/wget https://github.com/docker/machine/releases/download/v0.1.0/docker-machine_linux-amd64 && mv docker-machine* docker-machine && chmod +x docker-machine && sudo mv docker-machine /usr/local/bin/"
}

exec {"docker_compose":
    command => "/usr/bin/sudo /usr/bin/pip install -U docker-compose"
}

exec {"fig":
    command => "/usr/bin/sudo /usr/bin/pip install -U fig"
}
