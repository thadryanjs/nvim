return {

    -- filetree (this is the one I use, the other is just a dependency for the welcome screen)
    {"nvim-neo-tree/neo-tree.nvim"},

    -- telescope
    { 'nvim-telescope/telescope.nvim',
        config = function()
            local telescope = require 'telescope'
            local actions = require('telescope.actions')
            local previewers = require("telescope.previewers")
            local new_maker = function(filepath, bufnr, opts)
                opts = opts or {}
                filepath = vim.fn.expand(filepath)
                vim.loop.fs_stat(filepath, function(_, stat)
                    if not stat then return end
                    if stat.size > 100000 then
                        return
                    else
                        previewers.buffer_previewer_maker(filepath, bufnr, opts)
                    end
                end)
            end
            telescope.setup {
                defaults = {
                    buffer_previewer_maker = new_maker,
                    file_ignore_patterns = { "node_modules", "%_files/*.html", "%_cache", ".git/", "site_libs", ".venv" },
                    layout_strategy = "flex",
                    sorting_strategy = "ascending",
                    layout_config = {
                        prompt_position = "top",
                    },
                    mappings = {
                        i = {
                            ['<C-u>'] = false,
                            ['<C-d>'] = false,
                            ["<esc>"] = actions.close,
                            ["<c-j>"] = actions.move_selection_next,
                            ["<c-k>"] = actions.move_selection_previous,
                        }
                    }
                },
                pickers = {
                    find_files = {
                        hidden = true,
                        find_command = { "rg", "--files", "--hidden", "--glob", "!.git/*",
                            '--glob', '!**/.Rproj.user/*', '-L' },
                    }
                },
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown(),
                    },
                }
            }
            telescope.load_extension('ui-select')
            telescope.load_extension('fzf')
            telescope.load_extension('ui-select')
            telescope.load_extension('file_browser')
            telescope.load_extension('dap')
            telescope.load_extension('harpoon')
            -- telescope.load_extension('neorg-telescope')
        end
    },
    { 'nvim-telescope/telescope-ui-select.nvim' },
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    { 'nvim-telescope/telescope-dap.nvim' },
    { 'nvim-telescope/telescope-file-browser.nvim' },
    { 'nvim-lualine/lualine.nvim',
        dependencies = {
            { 'f-person/git-blame.nvim' },
        },
        config = function()
            local git_blame = require('gitblame')
            vim.g.gitblame_display_virtual_text = 0
            vim.o.shortmess = vim.o.shortmess .. "S" -- this is for the search_count function so lua can know this is `lua expression`
            --function for optimizing the search count
            local function search_count()
                if vim.api.nvim_get_vvar("hlsearch") == 1 then
                    local res = vim.fn.searchcount({ maxcount = 999, timeout = 500 })

                    if res.total > 0 then
                        return string.format("%d/%d", res.current, res.total)
                    end
                end

                return ""
            end
            local function macro_reg()
                return vim.fn.reg_recording()
            end
            require('lualine').setup {
                options = {
                    section_separators = '',
                    component_separators = '',
                    globalstatus = true
                    -- theme = "rose-pine",
                },
                sections = {
                    lualine_a = {'mode', {macro_reg, type = 'lua_expr', color = 'WarningMsg'} },
                    lualine_b = {'branch', { search_count, type = 'lua_expr' } },
                    lualine_c = {
                        { git_blame.get_current_blame_text, cond = git_blame.is_blame_text_available }
                    },
                },
                extensions = { 'nvim-tree' },
            }
        end
    },

    -- not sure if I'm using this
    { 'nanozuki/tabby.nvim',
        config = function()
            require 'tabby.tabline'.use_preset('tab_only')
        end
    },

    -- not too familiar but leaving it here
    { 'dstein64/nvim-scrollview',
        config = function()
            require('scrollview').setup({
                current_only = true,
            })
        end
    },

    -- filetree - I guess this is a dependency for Alpha which I like so I am leaving it
    { 'nvim-tree/nvim-tree.lua',
        -- keys = {
        --     { '<c-b>', ':NvimTreeToggle<cr>' },
        -- },
        -- config = function()
        --     require 'nvim-tree'.setup {
        --         disable_netrw = true,
        --         update_cwd = true,
        --         update_focused_file = {
        --             enable = true,
        --         },
        --         git = {
        --             enable = true,
        --             ignore = false,
        --             timeout = 500,
        --         },
        --         diagnostics = {
        --             enable = true,
        --         },
        --     }
        -- end
    },

    -- show keybinding help window
    { 'folke/which-key.nvim' },
    { 'simrat39/symbols-outline.nvim',
        config = function()
            require("symbols-outline").setup()
        end },

    -- terminal
    { "akinsho/toggleterm.nvim", version = '*',
        config = function()
            require("toggleterm").setup {
                open_mapping = [[<c-\>]],
                direction = 'float',
            }
        end
    },

    -- show diagnostics list
    { "folke/trouble.nvim", config = function()
        require("trouble").setup {}
    end
    },

    -- ?
    {"MunifTanjim/nui.nvim"},

    -- I am experimenting with not using this
    -- {"VonHeikemen/fine-cmdline.nvim",
    --     config = function()
    --         require('fine-cmdline').setup({
    --             cmdline = {
    --                 enable_keymaps = true,
    --                 smart_history = true,
    --                 prompt = ': '
    --             },
    --             popup = {
    --                 position = {
    --                     row = '50%',
    --                     col = '50%',
    --                 },
    --                 size = {
    --                     width = '60%',
    --                 },
    --                 border = {
    --                     style = 'rounded',
    --                 },
    --                 win_options = {
    --                     winhighlight = 'Normal:Normal,FloatBorder:FloatBorder',
    --                 },
    --             },
    --             hooks = {
    --                 before_mount = function(input)
    --                     -- code
    --                 end,
    --                 after_mount = function(input)
    --                     -- code
    --                 end,
    --                 set_keymaps = function(imap, feedkeys)
    --                     -- code
    --                 end
    --             }
    --         })
    --
    --     end,
    --     depends = {
    --         {"MunifTanjim/nui.nvim"},
    --
    --     },
    -- }
}
