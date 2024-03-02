
# Ubuntu
- Install necessary tools
  ```bash
  sudo apt update
  ```
  ```bash
  sudo apt install -y build-essential curl git clang-format clangd ripgrep lldb python3.10-venv cmake tmux ninja-build
  ```
   - install node.js

1. Download Neovim
   ```bash
   curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
   ```
2. Remove old version
   ```bash
   sudo rm -rf /opt/nvim
   ```
3. Install new version
   ```bash
   sudo tar -C /opt -xzf nvim-linux64.tar.gz
   ```
4. Add  environment variables of neovim to the `~/.bashrc file`
   ```
   vi ~/.bashrc
   ```
   ```bash
   export PATH="$PATH:/opt/nvim-linux64/bin"
   ```
5. If you are on a Xorg session, you may install either xsel or xclip by running:
   ```bash
   sudo apt install xsel
   ```
    or:
    ```bash
    sudo apt install xclip
    ```
    If you are on a Wayland session, you may install wl-clipboard by running:
    ```bash
    sudo apt install wl-clipboard
    ```

## Config
### customize
1. clone neovim-config project
   ```bash
   git clone https://github.com/EricZhengDaShun/neovim_config.git ~/.config/nvim
   ```
2.  Move clangd configuration files
    ```bash
    mv ~/.config/nvim/clangd ~/.config/
    ```
3. Install clangd in neovim using command
   ```
   :LspInstall clangd
   ```
4. Install the font, taking `SauceCodeProNerdFont-Regular` as an example, and change the terminal font. (Otherwise some pictures will be garbled)

### AstronVim
1. Clone astronvim
   ```bash
   git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim && nvim
   ```
2. Install tools
   ```
   :LspInstall clangd
   ```
   ```
   :TSInstall cpp
   ```
   ```
   :DapInstall codelldb
   ```
   ```
   :TSInstall yaml
   ```
   ```
   :TSInstall cmake
   ```
1. Set basic settings
   ```bash
   nvim ~/.config/nvim/lua/astronvim/options.lua
   ```
   ```lua
   shiftwidth = 4
   tabstop = 4
   ```
4. Set clangd settings 
   ```bash
    mkdir -p ~/.config/clangd && nvim ~/.config/clangd/config.yaml
    ```
    ```yaml
    CompileFlags:
      Add: [-Wunused-variable]
    ```
5. Set clang-format settings
   ```bash
   nvim ~/.clang-format
   ```
   ```
   BasedOnStyle: WebKit
   ```
6. Disable format on save
   ```bash
   nvim ~/.config/nvim/lua/astronvim/utils/lsp.lua
   ```
   ```lua
   format_on_save = { enabled = false }
   ```
7. Add neotree setting
   ```bash
   nvim ~/.config/nvim/lua/astronvim/mappings.lua
   ```
   ```lua
   -- Custom Neotree
   maps.n["<leader>mnf"] = { "<cmd> Neotree <cr>", desc = "Show neotree files"}
   maps.n["<leader>mnb"] = { "<cmd> Neotree show buffers <cr>", desc = "Show neotree buffers"}
   maps.n["<leader>mng"] = { "<cmd> Neotree show git_status <cr>", desc = "Show neotree git status"}
   ```

8. Install the font, taking `SauceCodeProNerdFont-Regular` as an example, and change the terminal font. (Otherwise some pictures will be garbled)

---

# Windows
1. Download [neovim/INSTALL.md at master · neovim/neovim · GitHub](https://github.com/neovim/neovim/blob/master/INSTALL.md)
2. Install neovim
3. Install chcolatey (use administrator)
   ```powershell
   Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
   ```
4. Install ripgrep
    ```
    choco install ripgrep
    ```
## Config
### customize
1. clone neovim-config project
   ```
   git clone https://github.com/EricZhengDaShun/neovim_config.git C:\Users\$USER_NAME\AppData\Local\nvim
   ```
2. Move clangd configuration files
   ```
   C:\Users\$USER_NAME\AppData\Local\
   ```
3. Install clangd in neovim using command
   ```
   :LspInstall clangd
   ```
4. Install the font, taking `SauceCodeProNerdFont-Regular` as an example, and change the terminal font. (Otherwise some pictures will be garbled)

###  AstronVim
1. Clone astronvim
   ```bash
   git clone --depth 1 https://github.com/AstroNvim/AstroNvim C:\Users\$USER_NAME\AppData\Local\nvim && nvim
   ```
2. Install tools
   ```
   :LspInstall clangd
   ```
   ```
   :TSInstall cpp
   ```
   ```
   :TSInstall yaml
   ```
   ```
   :TSInstall cmake
   ```
1. Set basic settings
   ```
   nvim C:\Users\$USER_NAME\AppData\Local\nvim\lua\astronvim\options.lua
   ```
   ```lua
   shiftwidth = 4
   tabstop = 4
   ```
4. Set clangd settings 
   ```b
    C:\Users\$USER_NAME\.config\clangd\config.yaml
    ```
    ```yaml
    CompileFlags:
      Add: [-Wunused-variable]
    ```
5. Set clang-format settings
   ```
   nvim $PROJECT_DIRCTORy\.clang-format
   ```
   ```
   BasedOnStyle: WebKit
   ```
6. Disable format on save
   ```
   nvim C:\Users\$USER_NAME\AppData\Local\nvim\lua\astronvim\utils\lsp.lua
   ```
   ```lua
   format_on_save = { enabled = false }
   ```
7. Install the font, taking `SauceCodeProNerdFont-Regular` as an example, and change the terminal font. (Otherwise some pictures will be garbled)