sudo apt-get update && \
        sudo apt-get install -y software-properties-common && \
        sudo add-apt-repository ppa:neovim-ppa/unstable -y && \
        sudo apt-get update && \
        sudo apt-get install -y make gcc ripgrep unzip git xclip neovim zsh && \
        git clone https://github.com/nvim-lua/kickstart.nvim.git ${XDG_CONFIG_HOME:-$HOME/.config}/nvim && \
        chsh -s /bin/zsh && \
        zsh