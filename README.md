# My Neovim IDE Configuration

This is a modern, Lua-based Neovim configuration designed to function as a lightweight yet powerful, IDE-like editor. It is built to be fast, aesthetically pleasing, and highly functional for modern development workflows.

It uses `lazy.nvim` for package management, ensuring that plugins are loaded efficiently.

![neovim-config](~/./neovim.png)

## Features

*   📦 **Plugin Management:** Automatically handles installation and updates via `lazy.nvim`.
*   🚀 **Fast Startup:** Plugins are lazy-loaded to keep startup times minimal.
*   ✨ **Beautiful UI:** A clean dashboard, status line, and the popular Tokyo Night theme.
*   🧠 **Code Intelligence:** Full LSP support for diagnostics, code actions, and go-to-definition via `lsp-zero`.
*   🤖 **Powerful Autocompletion:** State-of-the-art completion engine powered by `nvim-cmp`.
*   🔍 **Fuzzy Finding:** Quickly find files, text, buffers, and more with `Telescope`.
*   🌳 **File Explorer:** A familiar sidebar file tree with `nvim-tree`.
*   ✅ **Git Integration:** See git diffs and status directly in the editor with `gitsigns`.
*   🔧 **Easy to Customize:** The configuration is split into logical files, making it easy to add or change plugins and keymaps.

## Prerequisites

Before installing, make sure you have the following dependencies installed on your system.

1.  **Neovim v0.9.0+**: Required for the latest Lua API features.
2.  **Git**: Required by `lazy.nvim` to download and manage plugins.
3.  **A Nerd Font**: **This is essential for icons to render correctly.**
    *   Download and install a font like [FiraCode Nerd Font](https://www.nerdfonts.com/font-downloads) or [JetBrainsMono Nerd Font](https://www.nerdfonts.com/font-downloads).
    *   **Configure your terminal emulator to use the installed Nerd Font.**
4.  **Build Tools**: Required for compiling some plugins and Treesitter parsers.
    *   **Linux/macOS**: `gcc`, `make`, `unzip`.
    *   **Windows**: Visual Studio Build Tools and `make` (e.g., via `winget install GnuWin32.Make`).
5.  **`ripgrep`**: A required dependency for Telescope's `live_grep` (find text in project).
    *   Install it via your system's package manager (e.g., `sudo apt install ripgrep`, `brew install ripgrep`).

## Installation

1.  **Clone the configuration:**
    ```bash
    # Backup your existing config first!
    # mv ~/.config/nvim ~/.config/nvim.bak

    git clone <your-repo-url> ~/.config/nvim
    ```
    *(If you don't have this in a git repo, simply copy the files into `~/.config/nvim`)*

2.  **Start Neovim:**
    ```bash
    nvim
    ```
    On the first launch, `lazy.nvim` will automatically open and start installing all the plugins. This may take a minute.

3.  **Restart Neovim:**
    After the installation is complete, close and restart Neovim. You should be greeted by the Alpha dashboard.

## Post-Installation: Setting up Language Servers

This configuration sets up the LSP framework, but you need to install the language servers for the languages you use. We use `mason.nvim` for this.

1.  Run the command `:Mason` inside Neovim.
2.  A window will pop up. Find the language server you need (e.g., `lua_ls` for Lua, `pyright` for Python, `typescript-language-server` for TS/JS).
3.  Press `i` to install it.
4.  Restart Neovim. The language server will now automatically attach when you open a relevant file, providing full IDE features.

## Keybindings

The leader key is set to `Space`.

### General & Editor

| Key | Mode | Description |
| :--- | :--- | :--- |
| `jk` | Insert | Exit Insert Mode (a comfortable alternative to `<Esc>`). |
| `<leader>nh` | Normal | Clear search highlights. |
| `x` | Normal | Delete character without yanking it. |
| `+` / `-` | Normal | Increment / Decrement number under the cursor. |

### Window & Tab Management

| Key | Description |
| :--- | :--- |
| `<leader>sv` | Split window vertically. |
| `<leader>sh` | Split window horizontally. |
| `<leader>se` | Make splits of equal size. |
| `<leader>sx` | Close the current split. |
| `<leader>to` | Open a new tab. |
| `<leader>tx` | Close the current tab. |
| `<leader>tn` / `<leader>tp` | Go to the next / previous tab. |

### Plugin: Telescope (Fuzzy Finder)

| Key | Description |
| :--- | :--- |
| `<leader>ff` | Find files in the current working directory. |
| `<leader>fr` | Find recent files. |
| `<leader>fg` | Find text (live grep) in the current directory (requires `ripgrep`). |
| `<leader>fb` | Find currently open buffers. |

### Plugin: Nvim-Tree (File Explorer)

| Key | Description |
| :--- | :--- |
| `<leader>e` | Toggle the file explorer. |

### Plugin: LSP (Code Intelligence)

These keybindings are provided by `lsp-zero` and are active when an LSP server is attached to a buffer.

| Key | Description |
| :--- | :--- |
| `gd` | Go to Definition. |
| `gD` | Go to Declaration. |
| `K` | Show hover documentation for the symbol under the cursor. |
| `gi` | Go to Implementation. |
| `gr` | Go to References. |
| `<leader>ca` | Show Code Actions (e.g., for auto-imports, refactoring). |
| `<leader>rn` | Rename symbol. |
| `[d` / `]d` | Go to the previous / next diagnostic (error/warning). |

### Plugin: Comment

| Key | Mode | Description |
| :--- | :--- | :--- |
| `gcc` | Normal | Toggle comment for the current line. |
| `gc` | Visual | Toggle comment for the selected lines. |

## Core Plugins & References

This configuration is made possible by the excellent work of the Neovim community.

| Plugin | Description |
| :--- | :--- |
| [lazy.nvim](https://github.com/folke/lazy.nvim) | The package manager. |
| [tokyonight.nvim](https://github.com/folke/tokyonight.nvim) | The colorscheme. |
| [alpha-nvim](https://github.com/goolord/alpha-nvim) | The dashboard/home page. |
| [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua) | The file explorer. |
| [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) | The status line. |
| [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) | The fuzzy finder. |
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | For advanced syntax highlighting and code parsing. |
| [lsp-zero.nvim](https://github.com/VonHeikemen/lsp-zero.nvim) | A preset that simplifies LSP and autocompletion setup. |
| [mason.nvim](https://github.com/williamboman/mason.nvim) | Manages LSP servers, linters, and formatters. |
| [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) | The autocompletion engine. |
| [Comment.nvim](https://github.com/numToStr/Comment.nvim) | Easy code commenting. |
| [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) | Git integration in the sign column. |
| [which-key.nvim](https://github.com/folke/which-key.nvim) | Displays a popup with possible keybindings. |

## Customization

*   **Adding a new plugin:** Add a new entry to the table in `lua/plugins/init.lua`. For configuration, you can create a new file `lua/plugins/my-new-plugin.lua` and point to it using the `config` key.
*   **Changing the theme:** Edit the `vim.cmd.colorscheme` line in `lua/plugins/theme.lua`. You will also need to update the theme name in `lua/plugins/lualine.lua`.
*   **Adding keymaps:** Add new keybindings to `lua/core/keymaps.lua`.

---
