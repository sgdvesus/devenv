local map = vim.keymap.set
local ls = require("luasnip")
map("n","+","<C-a>") --increment
map("n","-","<C-x>") --decrement
map("n","<C-e>","gg<S-v>G") --select all
map("i","<C-c>","<Esc>") --vertical edit-mode
map("n","<leader>x","<cmd>!chmod +x %<cr>",{silent=true}) --+x file
map("n","<leader>s",[[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]) --replace word hover
--MOVE
map("v","K",":m '<-2<CR>gv=gv") --up
map("v","J",":m '>+1<CR>gv=gv") --down
--REGISTERS
map("x","<leader>r","\"_dP") --replace
map("n","x","\"_x") --x without yank
map({"n","v"},"<leader>d","\"_d") --delete without yank
map("n","Dw","vb\"_d") --backwords delete without yank
map("n","<leader>p","\"+P") --paste from clipboard
map({"n","v"},"<leader>y","\"+y") --copy to clipboard
map({"n","v"},"<leader>Y","\"+Y") --copy to Y
--TAB
map("n","<C-w>t","<cmd>tabnew<cr>",{silent=true}) --new
map("n","<C-w>&","<cmd>tabc<cr>",{silent=true}) --close
map("n","<Tab>","<cmd>tabn<cr>",{silent=true}) --next
--SPLIT
map("n","<C-w>s","<C-w>s<C-w>w") --horizontal
map("n","<C-w>v","<C-w>v<C-w>w") --vertical
--CURSOR POSITION
map("n","<C-u>","<C-u>zz") --up
map("n","<C-d>","<C-d>zz") --down
map("n","J","mzJ`z") --join line
map("n","n","nzzzv") --search terms
map("n","N","Nzzzv") --search terms
--QUICKFIX NAVIGATION
map("n","<C-k>","<cmd>cnext<cr>zz")
map("n","<C-j>","<cmd>cprev<cr>zz")
map("n","<leader>k","<cmd>lnext<cr>zz")
map("n","<leader>j","<cmd>lprev<cr>zz")
--PLUGINS
map("n","<leader>u",vim.cmd.UndotreeToggle)
-- DIAGNOSTIC, SEE `:help vim.diagnostic.*` FOR DOCUMENTATION ON ANY OF THE BELOW FUNCTIONS
map("n","<space>e",vim.diagnostic.open_float)
map("n","[d",vim.diagnostic.goto_prev)
map("n","]d",vim.diagnostic.goto_next)
map("n","<space>q",vim.diagnostic.setloclist)
-- USE LspAttach AUTOCOMMAND TO ONLY MAP THE FOLLOWING KEYS
-- AFTER THE LANGUAGE SERVER ATTACHES TO THE CURRENT BUFFER
vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("UserLspConfig", {}),
  callback = function(ev)
    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = ev.buf }
    map("n","gD",vim.lsp.buf.declaration,opts)
    map("n","gd",vim.lsp.buf.definition,opts)
    map("n","K",vim.lsp.buf.hover,opts)
    map("n","gi",vim.lsp.buf.implementation,opts)
    map("n","<C-ñ>",vim.lsp.buf.signature_help,opts)
    map("n","<space>wa",vim.lsp.buf.add_workspace_folder,opts)
    map("n","<space>wr",vim.lsp.buf.remove_workspace_folder,opts)
    map("n","<space>wl","<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<cr>",opts)
    map("n","<space>D",vim.lsp.buf.type_definition,opts)
    map("n","<space>rn",vim.lsp.buf.rename,opts)
    map({ "n","v" },"<space>ca",vim.lsp.buf.code_action,opts)
    map("n","gr",vim.lsp.buf.references,opts)
    map("n","<space>f","<cmd>lua vim.lsp.buf.format { async = true }<cr>",opts)
  end,
})
--LuaSnip
map({"i","s"},"<C-k>",function ()
   if ls.expand_or_jumpable() then
       ls.expand_or_jump()
   end
end,{silent = true})
map({"i","s"},"<C-j>",function ()
   if ls.jumpable(-1) then
       ls.jump(-1)
   end
end,{silent = true})
