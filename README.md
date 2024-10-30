# My dotfiles

## Useful packages (depending on set of plugins/LSP)

### Ubuntu packages

- cargo
- php
- ripgrep
- golang
- fd-find
### Others

#### NodeJS

1. Install [**nvm**](https://github.com/nvm-sh/nvm), and then current LTS version of NodeJS (20 at the time of writing this README).
2. Install `npm install -g typescript typescript-language-server`
3. If Mason has problem to install typescript server, try: `ln -s /home/$USER/.local/share/nvim/mason/packages/typescript-language-server/node_modules/typescript-language-server /home/$USER/.local/share/nvim/mason/typescript-language-server`
