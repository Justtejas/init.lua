--
vim.opt.termguicolors = true -- enables 24-bit RGB color for terminal
--
-- Make line numbers default
vim.opt.relativenumber = true
vim.opt.number = true
vim.g.clipboard = false
-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = 'a'
-- Don't show the mode, since it's already in the status line
vim.opt.showmode = true
vim.cmd [[ highlight StatusLine guibg=#EAB8E4 guifg=#4B0082 ]]
vim.opt.statusline = '   %f %y %m %=%l:%c / %L   '
-- Sync clipboard between OS and Neovim.
-- --  Schedule the setting after `UiEnter` because it can increase startup-time.
-- --  Remove this option if you want your OS clipboard to remain independent.
-- --  See `:help 'clipboard'`
vim.opt.clipboard = 'unnamedplus'
if vim.fn.has 'wsl' == 1 then
   vim.api.nvim_create_autocmd('TextYankPost', {
     group = vim.api.nvim_create_augroup('Yank', { clear = true }),
     callback = function()
	vim.fn.system('clip.exe', vim.fn.getreg '"')
    end,
  })
end

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
-- Enable break indent
vim.opt.breakindent = true
--
-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Decrease update time
vim.opt.updatetime = 30

-- Decrease mapped sequence wait time
vim.opt.timeout = false

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true
-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 8
