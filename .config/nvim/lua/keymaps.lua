local map = vim.keymap.set
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
