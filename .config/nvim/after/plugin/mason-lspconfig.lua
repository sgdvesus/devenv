local lspconfig = require("lspconfig")
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
    -- rust go python js ts php lua
   ensure_installed = {"rust_analyzer", "gopls","pyright","tsserver", "lua_ls"},
}
--SERVERS
lspconfig.rust_analyzer.setup{
  settings = {
    ['rust-analyzer'] = {
      diagnostics = {
        enable = false;
      }
    }
  }
}
lspconfig.gopls.setup{}
lspconfig.pyright.setup{}
lspconfig.lua_ls.setup{
    settings = {
        Lua = {
            runtime = {
                -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                version = 'LuaJIT',
            },
            diagnostics = {
                -- Get the language server to recognize the `vim` global
                globals = {'vim'},
            },
            workspace = {
                -- Make the server aware of Neovim runtime files
                library = vim.api.nvim_get_runtime_file("", true),
                checkThirdParty = false
            },
            -- Do not send telemetry data containing a randomized but unique identifier
            telemetry = {
                enable = false,
            },
        },
    },
}
