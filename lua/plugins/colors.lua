return {

    {"bluz71/vim-moonfly-colors"},
    {"ramojus/mellifluous.nvim"},
    {"DeviusVim/deviuspro.nvim"},
    { 'shaunsingh/nord.nvim' },
    { 'folke/tokyonight.nvim',
        config = function()
            require("tokyonight").setup {
                styles = {
                    comments = { italic = false },
                    keywords = { italic = false },
                }
            }

        end},
    { 'EdenEast/nightfox.nvim' },
    { 'rose-pine/neovim',
        name = 'rose-pine',
        config = function()
            require('rose-pine').setup({
                --- @usage 'auto'|'main'|'moon'|'dawn'
                variant = 'auto',
                --- @usage 'main'|'moon'|'dawn'
                dark_variant = 'main',
                bold_vert_split = false,
                dim_nc_background = false,
                disable_background = false,
                disable_float_background = false,
                disable_italics = true,

                --- @usage string hex value or named color from rosepinetheme.com/palette
                groups = {
                    background = 'base',
                    background_nc = '_experimental_nc',
                    panel = 'surface',
                    panel_nc = 'base',
                    border = 'highlight_med',
                    comment = 'muted',
                    link = 'iris',
                    punctuation = 'subtle',

                    error = 'love',
                    hint = 'iris',
                    info = 'foam',
                    warn = 'gold',

                    headings = {
                        h1 = 'iris',
                        h2 = 'foam',
                        h3 = 'rose',
                        h4 = 'gold',
                        h5 = 'pine',
                        h6 = 'foam',
                    }
                    -- or set all headings at once
                    -- headings = 'subtle'
                },

                -- Change specific vim highlight groups
                -- https://github.com/rose-pine/neovim/wiki/Recipes
                highlight_groups = {
                    ColorColumn = { bg = 'rose' },

                    -- Blend colours against the "base" background
                    CursorLine = { bg = 'foam', blend = 10 },
                    StatusLine = { fg = 'love', bg = 'love', blend = 10 },
                }
            })
            -- vim.cmd('colorscheme rose-pine')
        end
    },

    -- this has a lot of great themes but does something that makes me nuts
    -- to the match paren settings and I don't know how to change it lol
    -- {'flazz/vim-colorschemes'},
    { 'whatyouhide/vim-gotham'},

    {'rockerBOO/boo-colorscheme-nvim',
        config = function()
            require("boo-colorscheme").use({
                italic = false, -- toggle italics
                theme = "boo"
            })
        end
    },

    -- color html colors
    { 'norcalli/nvim-colorizer.lua',
        config = function()

            require 'colorizer'.setup {
                css = { css_fn = true, css = true },
                'javascript',
                'html',
                'r',
                'rmd',
                'qmd',
                'markdown',
                'python'
            }
        end
    },


}
