# Fzf
# Open in a popup if on tmux or Zellij, otherwise use --height mode
export FZF_DEFAULT_OPTS='--popup 70%'

# Starship
export STARSHIP_CONFIG=$XDG_CONFIG_HOME/starship/config.toml

# DotNET/NuGet
export NUGET_PACKAGES=$XDG_CACHE_HOME/nuget
export DOTNET_CLI_HOME=$XDG_CACHE_HOME/dotnet

# Docker
export DOCKER_CONFIG=$XDG_CONFIG_HOME/docker

# Fastlane
export FASTLANE_OPT_OUT_USAGE=1

# Terraform
export TF_CLI_CONFIG_FILE=$XDG_CONFIG_HOME/terraform/terraformrc

# Less
export LESSHISTFILE=$XDG_STATE_HOME/less/history

# Gradle
export GRADLE_USER_HOME=$XDG_CACHE_HOME/gradle

# PUB & Dart
export PUB_CACHE=$XDG_CACHE_HOME/pub
export ANALYZER_STATE_LOCATION_OVERRIDE=$XDG_STATE_HOME/dartServer

# Bun specific
export BUN_INSTALL_CACHE_DIR=$XDG_CACHE_HOME/bun
export BUN_INSTALL_GLOBAL_DIR=$XDG_DATA_HOME/bun
export BUN_INSTALL_BIN=$XDG_BIN_HOME

# NPM
export NPM_CONFIG_CACHE=$XDG_CACHE_HOME/npm

# DevPod
export DEVPOD_HOME=$XDG_DATA_HOME/devpod

# PATH
export PATH=$XDG_BIN_HOME:$PUB_CACHE/bin:$PATH
