
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
### NvChad
1. clone NvChad project
   ```bash
   git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim
   ```
2.  make clangd setting file
    ```bash
    mkdir -p ~/.config/clangd && nvim ~/.config/clangd/config.yaml
    ```
    ```yaml
    CompileFlags:
      Add: [-Wunused-variable]
    ```
1.  Modify basic setting
    ```bash
    nvim ~/.config/nvim/lua/core/init.lua 
    ```
    ```lua
    -- modify
    opt.shiftwidth = 4
    opt.tabstop = 4
    opt.softtabstop = 4
    -- add
    opt.relativenumber = true
    ```
5. setup format function
   ```bash
   nvim ~/.config/nvim/lua/custom/configs/conform.lua
   ```
   ```lua
   --type conform.options
   local options = {
       lsp_fallback = true,

        formatters_by_ft = {
            lua = { "stylua" },

            javascript = { "prettier" },
            css = { "prettier" },
            html = { "prettier" },

            sh = { "shfmt" },

            cpp = { "clang_format" },
     },

       -- adding same formatter for multiple filetypes can look too much work for some
      -- instead of the above code you could just use a loop! the config is just a table after all!
   
      -- format_on_save = {
      -- These options will be passed to conform.format()
      --    timeout_ms = 500,
      --    lsp_fallback = true,
      -- },
      formatters = {
        clang_format = {
          command = "clang-format",
          prepend_args = { "--style=WebKit" },
        },
      },
      }

      require("conform").setup(options)
      ```
5. Install the font, taking `SauceCodeProNerdFont-Regular` as an example, and change the terminal font. (Otherwise some pictures will be garbled)

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
### NvChad
1. clone NvChad project
   ```bash
   git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim
   ```
2.  make clangd setting file
    ```
    C:\Users\$USER_NAME\AppData\Local\clangd\config.yaml
    ```
    ```yaml
    CompileFlags:
      Add: [-Wunused-variable]
    ```
3.  Modify basic setting
    ```
    C:\Users\$USER_NAME\AppData\Local\nvim\lua\core\init.lua 
    ```
    ```lua
    -- modify
    opt.shiftwidth = 4
    opt.tabstop = 4
    opt.softtabstop = 4
    -- add
    opt.relativenumber = true
    ```
4. setup format function
   ```
   C:\Users\$USER_NAME\AppData\Local\nvim\lua\custom\configs\conform.lua
   ```
   ```lua
   --type conform.options
   local options = {
       lsp_fallback = true,

        formatters_by_ft = {
            lua = { "stylua" },

            javascript = { "prettier" },
            css = { "prettier" },
            html = { "prettier" },

            sh = { "shfmt" },

            cpp = { "clang_format" },
     },

       -- adding same formatter for multiple filetypes can look too much work for some
      -- instead of the above code you could just use a loop! the config is just a table after all!
   
      -- format_on_save = {
      -- These options will be passed to conform.format()
      --    timeout_ms = 500,
      --    lsp_fallback = true,
      -- },
      formatters = {
        clang_format = {
          command = "clang-format",
          prepend_args = { "--style=WebKit" },
        },
      },
      }

      require("conform").setup(options)
      ```
5. Install the font, taking `SauceCodeProNerdFont-Regular` as an example, and change the terminal font. (Otherwise some pictures will be garbled)
