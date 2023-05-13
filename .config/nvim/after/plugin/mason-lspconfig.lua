local lspconfig = require("lspconfig")
local cmp = require'cmp'

require("luasnip.loaders.from_vscode").lazy_load() --Load friendly-snippets
--MASON
require("mason").setup({
    ui = {
        icons = {
            package_installed = " ",
            package_pending = " ",
            package_uninstalled = " "
        }
    }
})
require("mason-lspconfig").setup {
    --rust go python js ts php lua
   ensure_installed = {"rust_analyzer", "gopls","pyright","tsserver", "lua_ls"},
}
--CMP
cmp.setup({
    snippet = {
      --REQUIRED you must specify a snippet engine
      expand = function(args)
        require('luasnip').lsp_expand(args.body) --For `luasnip` users.
      end,
    },
    window = {
      --completion = cmp.config.window.bordered(),
      --documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), --Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'luasnip' }, --For luasnip users.
    }, {
      { name = 'buffer' },
    })
})
local capabilities = require('cmp_nvim_lsp').default_capabilities() --Set up lspconfig
--SERVERS
lspconfig.rust_analyzer.setup{
    capabilities = capabilities,
  settings = {
    ['rust-analyzer'] = {
      diagnostics = {
        enable = false;
      }
    }
  }
}
lspconfig.gopls.setup{
    capabilities = capabilities,
}
lspconfig.pyright.setup{
    capabilities = capabilities,
}
lspconfig.lua_ls.setup{
    capabilities = capabilities,
    settings = {
        Lua = {
            runtime = {
                --Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                version = 'LuaJIT',
            },
            diagnostics = {
                --Get the language server to recognize the `vim` global
                globals = {'vim'},
            },
            workspace = {
                --Make the server aware of Neovim runtime files
                library = vim.api.nvim_get_runtime_file("", true),
                checkThirdParty = false
            },
            --Do not send telemetry data containing a randomized but unique identifier
            telemetry = {
                enable = false,
            },
        },
    },
}
