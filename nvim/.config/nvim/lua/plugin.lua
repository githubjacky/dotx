local use = require('packer').use

return require('packer').startup(function()
    use {'wbthomason/packer.nvim', opt = true}
    --tool
    use 'sheerun/vim-polyglot'
    use 'norcalli/nvim-colorizer.lua'
    use 'folke/which-key.nvim'
    use {'lewis6991/spellsitter.nvim',
        config = function()
            require('spellsitter').setup()
        end
    }
    use 'glepnir/dashboard-nvim'
        --have to be setup
    use 'nvim-telescope/telescope.nvim'
    use "numtostr/FTerm.nvim"

    --ide
    use 'jiangmiao/auto-pairs'
    use 'hoob3rt/lualine.nvim'
    use 'akinsho/nvim-bufferline.lua'
    use 'lukas-reineke/indent-blankline.nvim'
    use {'kyazdani42/nvim-tree.lua',requires = 'kyazdani42/nvim-web-devicons',
        config = function() require'nvim-tree'.setup {} end}

    --lsp
    use 'nvim-lua/plenary.nvim'
    use 'neovim/nvim-lspconfig'
    use 'williamboman/nvim-lsp-installer'
    use 'glepnir/lspsaga.nvim'
    use 'hrsh7th/nvim-compe'
        --have to be setup

    --theme
    use 'junegunn/rainbow_parentheses.vim'
    use {'EdenEast/nightfox.nvim',
    }
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
        --have to be setup

    --markdown
    use 'junegunn/goyo.vim'
    use 'junegunn/limelight.vim'
    use 'plasticboy/vim-markdown'
    use 'godlygeek/tabular'
    use {"ellisonleao/glow.nvim"}  --preview
    --Rmarkdown
    use 'vim-pandoc/vim-rmarkdown'
    use 'vim-pandoc/vim-pandoc'
    use 'vim-pandoc/vim-pandoc-syntax'
        --have to be setup

    --lua
    use 'euclidianAce/BetterLua.vim'
    use 'tjdevries/nlua.nvim'

    --R
        --have to be setup
    use "jalvesaq/Nvim-R"

    --python for data
    use 'untitled-ai/jupyter_ascending.vim'
end)
