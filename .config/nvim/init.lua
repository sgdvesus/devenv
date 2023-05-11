require("settings")
require("keymaps")
vim.api.nvim_create_autocmd("BufWritePre", {command = "%s/\\s\\+$//e"}) -- remove end-line spaces
