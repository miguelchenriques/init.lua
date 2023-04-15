vim.g.mapleader = " "
vim.keymap.set("n", "<leader>ex", vim.cmd.Ex, {desc = "File Explorer"})

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", {desc = "Move Selection Down"})
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", {desc = "Move Selection Down"})

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]], {desc = 'Paste without copy'})

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>",
{desc = 'Switch Project'})
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>");
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

local set = vim.keymap.set

-- Move to window using the <ctrl> hjkl keys
set("n", "<C-h>", "<C-w>h", { desc = "Go to left window" })
set("n", "<C-j>", "<C-w>j", { desc = "Go to lower window" })
set("n", "<C-k>", "<C-w>k", { desc = "Go to upper window" })
set("n", "<C-l>", "<C-w>l", { desc = "Go to right window" })

-- Resize window using <ctrl> arrow keys
set("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
set("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
set("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
set("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })

-- windows
set("n", "<leader>ww", "<C-W>p", { desc = "Other window" })
set("n", "<leader>wd", "<C-W>c", { desc = "Delete window" })
set("n", "<leader>w-", "<C-W>s", { desc = "Split window below" })
set("n", "<leader>w|", "<C-W>v", { desc = "Split window right" })

-- tabs
set("n", "<leader><tab>l", "<cmd>tablast<cr>", { desc = "Last Tab" })
set("n", "<leader><tab>f", "<cmd>tabfirst<cr>", { desc = "First Tab" })
set("n", "<leader><tab><tab>", "<cmd>tabnew<cr>", { desc = "New Tab" })
set("n", "<leader><tab>6", "<cmd>tabnext<cr>", { desc = "Next Tab" })
set("n", "<leader><tab>d", "<cmd>tabclose<cr>", { desc = "Close Tab" })
set("n", "<leader><tab>4", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })

