#!/bin/bash
# Post-Installation Setup Script for NikaVim

echo "🚀 NikaVim Setup Wizard"
echo "====================="
echo ""

# Check if nvim is installed
if ! command -v nvim &> /dev/null; then
    echo "❌ Neovim is not installed. Please install it first."
    echo "   Ubuntu/Debian: sudo apt install neovim"
    echo "   macOS: brew install neovim"
    echo "   Windows: choco install neovim"
    exit 1
fi

echo "✅ Neovim installed: $(nvim --version | head -n1)"
echo ""

# Check Python support
echo "Checking Python support..."
if python3 -c "import neovim" 2>/dev/null; then
    echo "✅ Python neovim module found"
else
    echo "⚠️  Installing Python neovim module..."
    python3 -m pip install --user pynvim
fi
echo ""

# Launch neovim with plugin installation
echo "🔧 Installing plugins..."
echo "Opening Neovim to install plugins (this may take a minute)..."
echo ""

nvim --headless +Lazy! +qall

echo ""
echo "✅ Plugins installed!"
echo ""

# Offer to install LSP servers
echo "Would you like to install language servers now? (y/n)"
read -r install_lsp

if [[ $install_lsp == "y" ]]; then
    echo ""
    echo "Popular language servers:"
    echo "  1. lua_ls (Lua)"
    echo "  2. pyright (Python)"
    echo "  3. ts_ls (TypeScript/JavaScript)"
    echo "  4. html (HTML)"
    echo "  5. cssls (CSS)"
    echo "  6. All of the above"
    echo "  7. Skip"
    echo ""
    echo "Enter your choice (1-7):"
    read -r choice

    case $choice in
        1)
            nvim --headless +MasonInstall\ lua_ls +qall
            ;;
        2)
            nvim --headless +MasonInstall\ pyright +qall
            ;;
        3)
            nvim --headless +MasonInstall\ ts_ls +qall
            ;;
        4)
            nvim --headless +MasonInstall\ html +qall
            ;;
        5)
            nvim --headless +MasonInstall\ cssls +qall
            ;;
        6)
            nvim --headless +MasonInstall\ lua_ls\ pyright\ ts_ls\ html\ cssls\ jsonls\ yamlls\ bashls\ clangd\ rust_analyzer +qall
            ;;
        7)
            echo "Skipped"
            ;;
        *)
            echo "Invalid choice"
            ;;
    esac
fi

echo ""
echo "🎉 Setup complete!"
echo ""
echo "Next steps:"
echo "  1. Run: nvim"
echo "  2. Press Space (leader key) to see available commands"
echo "  3. Try these keymaps:"
echo "     - <leader>ff : Find files"
echo "     - <leader>fg : Search text"
echo "     - <C-n> : Toggle file explorer"
echo "  4. Read README.md for more information"
echo ""
echo "Happy coding! 🚀"
