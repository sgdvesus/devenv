vim.cmd.packadd("packer.nvim")

return require("packer").startup(function(use)
    use "wbthomason/packer.nvim" --PACKER
    use({ "svrana/neosolarized.nvim", requires = {"tjdevries/colorbuddy.nvim"} }) --Neosolarized color scheme
    use "nvim-lualine/lualine.nvim" --Statusline
    use {"akinsho/bufferline.nvim", tag = "v4.*", requires = "nvim-tree/nvim-web-devicons"} --Tab
    use "mbbill/undotree" --Treechanges
    use { "numToStr/Comment.nvim" } --Comments
    use { "nvim-telescope/telescope.nvim", tag = "0.1.1", requires = {"nvim-lua/plenary.nvim"} } --Telescope
    use "nvim-telescope/telescope-file-browser.nvim" --File browser
    use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" } --Treesitter
    -- LSP CONFIG
    use "neovim/nvim-lspconfig" --Lsp preset config
    use { "williamboman/mason.nvim", run = ":MasonUpdate" } --LSP server
    use "williamboman/mason-lspconfig.nvim" --Mason lspconfig
    -- COMPLETION
    use "hrsh7th/nvim-cmp" --Auto completion
    use "hrsh7th/cmp-nvim-lsp" --Lsp source nvim-cmp
    use "hrsh7th/cmp-buffer"
    use "hrsh7th/cmp-path"
    -- SNIPPETS
    use{ "L3MON4D3/LuaSnip", requires = {"rafamadriz/friendly-snippets"} } --Snippet
    use "saadparwaiz1/cmp_luasnip" --Snippets source nvim-cmp

end)
