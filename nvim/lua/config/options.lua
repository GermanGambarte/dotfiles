vim.g.mapleader = ' '
vim.opt.cursorline = true
vim.opt.fillchars:append({ eob = ' ' })

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.autoindent = true
vim.opt.smartindent = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv('HOME') .. '/.vim/undodir'
vim.opt.undofile = true

-- vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.scrolloff = 5
vim.opt.sidescrolloff = 5
vim.opt.signcolumn = 'yes'
vim.opt.isfname:append('@-@')

vim.opt.updatetime = 50

vim.opt.termguicolors = true

vim.opt.colorcolumn = '80'
vim.opt.guicursor = table.concat({
  'n-v-c:block-Cursor/lCursor-blinkwait1000-blinkon100-blinkoff100',
  'i-ci:ver25-Cursor/lCursor-blinkwait1000-blinkon100-blinkoff100',
  'r:hor50-Cursor/lCursor-blinkwait100-blinkon100-blinkoff100',
}, ',')

-- vim.g.netrw_winsize = 40
-- vim.g.netrw_banner = 0
-- vim.g.netrw_keepdir = 0
-- vim.g.netrw_sort_sequence = [[[\/]$,*]]
-- vim.g.netrw_liststyle = 3
-- vim.g.netrw_list_hide = vim.fn['netrw_gitignore#Hide']()
