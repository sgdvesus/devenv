require("settings")
require("keymaps")
require("usplugins")
vim.api.nvim_create_autocmd("BufWritePre", {command = "%s/\\s\\+$//e"}) -- remove end-line spaces
