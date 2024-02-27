
# Ubuntu
- Install necessary tools
  ```bash
  sudo apt update
  ```
  ```bash
  sudo apt install -y build-essential curl git clang-format clangd ripgrep
  ```

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
## config
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
