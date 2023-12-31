
vim.g.mapleader = " "

-- go back to file explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- one to move lines when highlighted in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- change indentation
vim.keymap.set("v", "<S-Tab>", "<gv")
vim.keymap.set("v", "<Tab>", ">gv")


-- Cut line from below current line and add to current line with space, but keep cursor there
vim.keymap.set("n", "J", "mzJ`z")

-- scroll using CTRL D and U but keep curson in the same place
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- keep cursor in place when searching terms
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- don't lose current paste buffer
-- paste something over another but don't lose current thing copied over
-- use leader p and it'll paste and preserve
vim.keymap.set("x", "<leader>p", [["_dP]])


-- leader y goes to + register which is system register 
-- this means you can separate your clipboards a bit better 
-- but allow for copying and pasting more easily
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- idk what this does yet
-- vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

vim.keymap.set("n", "Q", "<nop>")

-- can switch projects using ctrl+f but idk yet
-- vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")


-- quickfix navigation TODO
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- replace current work 
-- vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

