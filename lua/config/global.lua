vim.g.markdown_fenced_languages = { 'html', 'python', 'bash=sh', 'R=r' }
vim.opt.termguicolors = true
vim.opt.modifiable = true

-- more opinionated
vim.opt.number = true                  -- show linenumbers
vim.opt.relativenumber = true
vim.opt.timeoutlen = 400               -- until which-key pops up
vim.opt.updatetime = 250               -- for autocommands and hovers
vim.opt.mouse = 'a'                    -- enable mouse
vim.opt.mousefocus = true
vim.opt.clipboard:append 'unnamedplus' -- use system clipboard
vim.opt.linebreak = true
vim.opt.autochdir = false
vim.opt.undofile = true
vim.opt.cursorline = true
vim.opt.guifont='CascadiaCode'

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
vim.opt.cmdheight = 1

-- https://stackoverflow.com/questions/69290794/nvim-lsp-change-lspconfig-diagnostic-message-location
vim.diagnostic.config({
    virtual_text = false
})
-- Show line diagnostics automatically in hover window
vim.o.updatetime = 250
vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]

-- bookmarks saved in a persistent, back-ed up file
vim.g.bookmark_auto_save_file = "/home/thadryan/Documents/Templates/vim-bookmarks.txt"

-- Copilot stuff
vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("")', {expr=true, noremap=true, script=true})

-- colorscheme options for BOO (shold move this to other part of config)
vim.g.boo_colorscheme_italic = false



-- fine commandline
-- vim.api.nvim_set_keymap('n', ':', '<cmd>FineCmdline<CR>', {noremap = true})
-- don't need cmdline if I have status line and fine cmdline (When authenticating Copilot, I have to undo this)
-- vim.cmd("set cmdheight=0")

vim.g.python3_host_prog = '/home/thadryan/miniconda3/envs/ado-mat/bin/python'
vim.g.jukit_mappings = 0
vim.g.jukit_shell_cmd = "R"
-- commands

vim.api.nvim_create_user_command(
    'TelescopeBookmarks',
    function(input)
        vim.cmd("lua require('telescope').extensions.vim_bookmarks.all({width_text=45})")
    end,
    {}
)


vim.api.nvim_create_user_command(
    'TelescopeBookmarksCurrentFile',
    function(input)
        vim.cmd("lua require('telescope').extensions.vim_bookmarks.current_file({width_text=45})")
    end,
    {}
)


-- func! WordCount()
--   :w !wc
-- endfu
