# Shell & Prompt
export ATUIN_CONFIG_DIR="$XDG_CONFIG_HOME/atuin"
export ATUIN_HOME="$XDG_DATA_HOME/atuin"
export STARSHIP_CONFIG="$XDG_CONFIG_HOME/starship/config.toml"
export MISE_AUTO_ENV=true

# Languages & Package Managers
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export GOPATH="$XDG_DATA_HOME/go"
export GOMODCACHE="$XDG_CACHE_HOME/go/mod"

export PUB_CACHE="$XDG_CACHE_HOME/pub"
export ANALYZER_STATE_LOCATION_OVERRIDE="$XDG_STATE_HOME/dartServer"

export BUN_INSTALL_CACHE_DIR="$XDG_CACHE_HOME/bun"
export BUN_INSTALL_GLOBAL_DIR="$XDG_DATA_HOME/bun"
export BUN_INSTALL_BIN="$XDG_BIN_HOME"

export NPM_CONFIG_CACHE="$XDG_CACHE_HOME/npm"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"

export NUGET_PACKAGES="$XDG_CACHE_HOME/nuget"
export DOTNET_CLI_HOME="$XDG_CACHE_HOME/dotnet"
export GRADLE_USER_HOME="$XDG_CACHE_HOME/gradle"

# DevOps & Cloud Tools
export DOCKER_CONFIG="$XDG_CONFIG_HOME/docker"
export TF_CLI_CONFIG_FILE="$XDG_CONFIG_HOME/terraform/terraformrc"
export FASTLANE_OPT_OUT_USAGE=1


























# 4. De-clutter $HOME (XDG Overrides for CLI tools & languages)
export LESSHISTFILE="$XDG_STATE_HOME/less/history"
export MISE_AUTO_ENV=true


# Atuin
export ATUIN_CONFIG_DIR=$XDG_CONFIG_HOME/atuin
export ATUIN_HOME=$XDG_DATA_HOME/atuin

# Starship
STARSHIP_CONFIG=$XDG_CONFIG_HOME/starship/config.toml

# DotNET/NuGet
export NUGET_PACKAGES=$XDG_CACHE_HOME/nuget
export DOTNET_CLI_HOME=$XDG_CACHE_HOME/dotnet

# Docker
export DOCKER_CONFIG=$XDG_CONFIG_HOME/docker

# Fastlane
export FASTLANE_OPT_OUT_USAGE=1

# Terraform
export TF_CLI_CONFIG_FILE=$XDG_CONFIG_HOME/terraform/terraformrc

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

# PATH
export PATH=$XDG_BIN_HOME:$PUB_CACHE/bin:$PATH
