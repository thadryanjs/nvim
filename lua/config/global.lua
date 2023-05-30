vim.g.markdown_fenced_languages = { 'html', 'python', 'bash=sh', 'R=r' }
vim.opt.termguicolors = true
vim.opt.modifiable = true

-- Python environment (doesn't work in quarto for regular Python)
-- vim.g.python3_host_prog = '/home/thadryan/anaconda3/envs/binf1/bin/python'
-- vim.env.VIRTUAL_ENV = '/home/thadryan/anaconda3/envs/binf1/bin/python'

-- more opinionated
vim.opt.number = true                  -- show linenumbers
vim.opt.relativenumber = true
vim.opt.timeoutlen = 400               -- until which-key pops up
vim.opt.updatetime = 250               -- for autocommands and hovers
vim.opt.mouse = 'a'                    -- enable mouse
vim.opt.mousefocus = true
vim.opt.clipboard:append 'unnamedplus' -- use system clipboard
vim.opt.linebreak = true

-- don't ask about existing swap files
vim.opt.shortmess:append 'A'

-- use spaces as tabs
local tabsize = 4
vim.opt.expandtab = true
vim.opt.shiftwidth = tabsize
vim.opt.tabstop = tabsize

-- space as leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- smarter search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- colortheme tweaks
vim.g.nord_borders = true

-- indent
vim.opt.smartindent = true
vim.opt.breakindent = true

-- consistent number column
vim.opt.signcolumn = "yes:1"

-- how to show autocomplete menu
vim.opt.completeopt = 'menuone,noinsert'

-- add folds with treesitter grammar
vim.opt.foldmethod = "expr"
vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
-- but open all by default
vim.opt.foldlevel = 99

-- global statusline
vim.opt.laststatus = 3

-- split right and below by default
vim.opt.splitright = true
vim.opt.splitbelow = true

--tabline
vim.opt.showtabline = 1

--windowline
vim.opt.winbar = '%t'

--don't continue comments automagically
vim.opt.formatoptions:remove({ 'c', 'r', 'o' })

-- hide cmdline when not used
vim.opt.cmdheight = 0


-- commands
vim.api.nvim_create_user_command(
  'WordPprcessorMode',
  function(input)
      vim.cmd("set textwidth=0")
      vim.cmd("set nonumber")
      vim.cmd("set wrap")
      vim.cmd("nmap j gj")
      vim.cmd("nmap k gk")
      vim.cmd("set linebreak")
      vim.cmd("setlocal smartindent")
      vim.cmd("setlocal noexpandtab")
      vim.cmd("setlocal spell spelllang=en_us")
      -- vim.cmd("hi clear SpellBad")
      -- vim.cmd("hi SpellBad cterm=underline")
      -- vim.cmd("hi clear SpellCap")
  end,
  {}
)

-- func! WordCount()
--   :w !wc
-- endfu
