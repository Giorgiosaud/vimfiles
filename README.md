# Portable Vim Configuration

A clean, portable Vim configuration optimized for modern development without PHP dependencies.

## Features

- **Plugin Manager**: vim-plug for easy plugin management
- **Fuzzy Finding**: FZF integration with file MRU support
- **Linting**: ALE (Asynchronous Lint Engine) for real-time error checking
- **Snippets**: UltiSnips for powerful snippet expansion
- **UI Enhancements**: Lightline status bar, Tomorrow Night color scheme
- **File Navigation**: Netrw improvements via vim-vinegar, MRU for recent files
- **Code Tools**: Commentary for easy commenting, indent guides

## Prerequisites

Install these tools for full functionality:

```shell
# macOS
brew install fzf the_silver_searcher

# Linux
apt-get install fzf silversearcher-ag  # Debian/Ubuntu
```

## Installation

1. Clone this repository to your home directory:
```shell
cd ~
git clone <your-repo-url> vim
```

2. Create symbolic links:
```shell
# Create main .vimrc symlink
ln -s ~/vim/vimrc ~/.vimrc

# If ~/.vim doesn't exist, create it
mkdir -p ~/.vim

# Create symlink for autoload (vim-plug)
ln -s ~/vim/autoload ~/.vim/autoload
```

3. Open Vim and install plugins:
```shell
vim +PlugInstall +qall
```

## Plugin Management

- **Install plugins**: `:PlugInstall`
- **Update plugins**: `:PlugUpdate`
- **Remove unused plugins**: `:PlugClean`
- **Check plugin status**: `:PlugStatus`

## Installed Plugins

| Plugin | Purpose |
|--------|---------|
| vim-sensible | Sensible defaults for Vim |
| lightline.vim | Lightweight status bar |
| vim-vinegar | Enhanced netrw file browser |
| mru | Most Recently Used files |
| ale | Asynchronous linting |
| ultisnips | Snippet engine |
| vim-commentary | Easy code commenting |
| fzf + fzf.vim | Fuzzy file finder |
| fzf-filemru | FZF MRU integration |
| vim-indent-guides | Visual indent guides |
| vim-tomorrow-theme | Tomorrow Night color scheme |

## Key Mappings

### Leader Key
- Leader: `,`

### File Navigation
- `,p` - Open FZF file finder
- `Ctrl-p` - Open FZF with MRU sorting
- `,e` - Open MRU (Most Recently Used files)
- `,ev` - Edit vimrc
- `,s` - Reload vimrc

### Window Management
- `Cmd-Alt-Right` - Move to right window
- `Cmd-Alt-Left` - Move to left window
- `Cmd-Alt-Down` - Next window
- `Cmd-Alt-Up` - Previous window
- `,w` - Close buffer

### Editing
- `jj` - Exit insert mode (alternative to Esc)
- `;w` - Save file
- `gc` - Comment/uncomment selection
- `Esc` - Clear search highlighting

### Snippets (UltiSnips)
- `Tab` - Expand snippet
- `Ctrl-j` - Jump to next placeholder
- `Ctrl-k` - Jump to previous placeholder

### Linting (ALE)
- `:ALEDetail` - Show error details
- `:ALEFix` - Run fixers
- `:ALEToggle` - Toggle linting

## Customizations

### Editor Settings
- Tab width: 4 spaces
- Auto-remove trailing whitespace on save
- Smart indentation
- Line numbers enabled
- Split windows open below/right
- Auto-reload files changed outside Vim

### ALE Configuration
- Lint on save and file enter
- No linting while typing (better performance)
- Auto-fix disabled by default

### FZF Configuration
- Uses ag (Silver Searcher) for fast file finding
- Respects .gitignore files
- MRU integration with git-ls support

## Color Scheme

Using **Tomorrow-Night** theme with dark background from [vim-tomorrow-theme](https://github.com/chriskempson/vim-tomorrow-theme) by Chris Kempson.

## Directory Structure

```
vim/
├── vimrc              # Main configuration file
├── autoload/          # vim-plug auto-loader
├── plugged/           # Installed plugins (auto-managed by vim-plug)
│   └── vim-tomorrow-theme/  # Color scheme installed here
└── snippets/          # Custom snippets directory
```

## Troubleshooting

### FZF not working
Ensure fzf is installed and the path in vimrc:33 matches your installation:
```vim
set rtp+=/usr/local/opt/fzf  " Update this path if needed
```

### Plugins not loading
Run `:PlugInstall` to install missing plugins.

### Color scheme not working
If the Tomorrow-Night color scheme doesn't load:
1. Ensure vim-tomorrow-theme is installed: `:PlugInstall`
2. Check if the plugin was loaded: `:scriptnames`
3. Manually test: `:colorscheme Tomorrow-Night`

### ALE linters not found
Install language-specific linters:
```shell
# JavaScript/TypeScript
npm install -g eslint typescript

# Python
pip install flake8 pylint

# Add other linters as needed
```
