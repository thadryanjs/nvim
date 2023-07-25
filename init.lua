require 'config.global'
require 'config.lazy'
require 'config.autocommands'
require 'config.keymap' 

-- set the colorscheme
vim.cmd("colorscheme boo")
-- don't need cmdline if I have status line and fine cmdline
vim.cmd("set cmdheight=0")
