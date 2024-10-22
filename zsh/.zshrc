# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="crcandy"
#ZSH_THEME="amuse"
ZSH_THEME="xiong-chiamiov-plus"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions themes cp z zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# dotnet

export DOTNET_SYSTEM_GLOBALIZATION_INVARIANT=1
export PATH=$PATH:$HOME/dotnet
export DOTNET_ROOT=$HOME/dotnet


# anaconda
export PATH=$PATH:/opt/anaconda/bin

# colorscripts

pokemon-colorscripts --no-title -s -r


# 设置fzf使用ripgrep
# FZF_DEFAULT_OPTS 的-m 变量可以使按下<Tab> 或 <Shift-Tab>后进行多重选择。
# 如果仅让fzf在vim中使用,这个设置不是必须的
if type  rg &> /dev/null; then
	export FZF_DEFAULT_COMMAND='rg --files'
	export FZF_DEFAULT_OPTS='-m'
fi

# 开启plank,且屏蔽警告信息等
# https://blog.csdn.net/S_o_h_o_t/article/details/119853711
#ps -ef | grep plank | grep -v grep
#if [ $? -ne 0 ];
#then
	#plank -n primdock & 2>>/dev/null

#fi


# 添加ue相关系统变量
# # https://github.com/CesiumGS/cesium-unreal/blob/ue5-main/Documentation/developer-setup-linux.md
# 这里设置到UE5目录而不是UnrealEditor所在的目录
# ue5.03
# export UNREAL_ENGINE_DIR=/home/yeshooo/software/UE5
# export UNREAL_ENGINE_COMPILER_DIR=$UNREAL_ENGINE_DIR/Engine/Extras/ThirdPartyNotUE/SDKs/HostLinux/Linux_x64/v20_clang-13.0.1-centos7/x86_64-unknown-linux-gnu
# export UNREAL_ENGINE_LIBCXX_DIR=$UNREAL_ENGINE_DIR/Engine/Source/ThirdParty/Unix/LibCxx

# ue5.2
export UNREAL_ENGINE_DIR=/home/yeshooo/software/UE5.2
export UNREAL_ENGINE_COMPILER_DIR=$UNREAL_ENGINE_DIR/Engine/Extras/ThirdPartyNotUE/SDKs/HostLinux/Linux_x64/v21_clang-15.0.1-centos7/x86_64-unknown-linux-gnu
export UNREAL_ENGINE_LIBCXX_DIR=$UNREAL_ENGINE_DIR/Engine/Source/ThirdParty/Unix/LibCxx



# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/yeshooo/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/yeshooo/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/yeshooo/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/yeshooo/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# 把当前路径添加到 环境变量,不然idea terminal 报错
export PATH=$PATH:./
#export PATH=/home/yeshooo/.cargo/bin:/home/yeshooo/.local/bin:/home/yeshooo/.local/bin:/home/yeshooo/.nvm/versions/node/v18.15.0/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/yeshooo/dotnet:/opt/anaconda/bin:/home/yeshooo/dotnet:/opt/anaconda/bin:/home/yeshooo/.local/share/dwm/statusbar:/home/yeshooo/.local/share/bob/nvim-bin

# 配置Geoserver数据路径
export GEOSERVER_DATA_DIR=/home/yeshooo/E/GeoServerData

#if command -v btrfs &> /dev/null;then
#	sudo btrfs device scan
#fi

# 更改ls/ll/lt命令的显示图标
# Set-up icons for files/folders in terminal
alias ls='eza -a --icons'
alias ll='eza -al --icons'
alias lt='eza -a --tree --level=1 --icons'

