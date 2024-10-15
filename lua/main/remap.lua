-- Set <space> as the leader key
-- See `:help mapleader`
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Go to directory I guess, thanks to primeagen
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
-- again thanks to primeagen, centers buffer whenever scrolled through or go to next occurrence of searched word
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- paste in visual mode
vim.keymap.set("x", "<leader>p", [["_dP]])

-- delete without saving it in reg
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])
--
vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>ff", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)
-- jump in quickfix list
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
-- replace the word under the cursor
vim.keymap.set("n", "<leader>rn", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
-- make the current file executable
vim.keymap.set("n", "<leader>ex", "<cmd>!chmod +x %<CR>", { silent = true })
-- for go
vim.keymap.set( "n", "<leader>ee", "oif err != nil {<CR>}<Esc>Oreturn err<Esc>")
--
-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps

vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'show diagnostic error list' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
vim.keymap.set('n', '<leader>.', ':norm A.<CR>', { desc = 'Append a period to the end of the current line' })
vim.keymap.set('n', '<leader>,', ':s/\\vs*(,\\s*)*$/,/<CR>:nohl<CR>', { desc = 'Append a period to the end of the current line' })
vim.keymap.set('n', '<leader>;', ':s/\\vs*(;\\s*)*$/;/<CR>:nohl<CR>', { desc = 'Append a semicolon to the end of the current line' })
vim.keymap.set('n', '<leader>x', ':s/.\\{1}$//<CR>:nohl<CR>', { desc = 'Delete the last character of the current line' })
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
vim.keymap.set('n', 'j', 'gj', { desc = 'Move through wrapped lines without skipping' })
vim.keymap.set('n', 'k', 'gk', { desc = 'Move through wrapped lines without skipping' })

--  See `:help lua-guide-autocommands`

--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'Highlight when yanking (copying) text',
    group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})

