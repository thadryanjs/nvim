return {
    {"nvim-neorg/neorg",
        build = ":Neorg sync-parsers",
        -- dependencies = {{ "nvim-lua/plenary.nvim" }, { "nvim-neorg/neorg-telescope" }},
        config = function()
            require("neorg").setup {
                load = {
                    ["core.defaults"] = {}, -- loads default behaviour
                    -- ["core.concealer"] = {}, -- adds pretty icons to your documents,
                    ["core.export"] = {},
                    -- ["core.integrations.telescope"] = {},
                    ["core.dirman"] = { -- manages neorg workspaces
                        config = {
                            workspaces = {
                                oud = "/home/thadryan/Documents/Vault/Projects/ActiveProjects/0_OUD-prediction",
                                ideagen = "/home/thadryan/Documents/Vault/Projects/ActiveProjects/1_IdeaGeneration",
                                contrapption = "/home/thadryan/Documents/Vault/Projects/ActiveProjects/2_ContrApption",
                                dm = "/home/thadryan/Documents/Vault/Areas/DecisionMaking",
                                workflow = "/home/thadryan/Documents/Vault/Projects/ActiveProjects/Workflow",
                                vim = "/home/thadryan/Documents/Vault/Areas/Tech/Vim",
                                phone = "/home/thadryan/Documents/HomeVault/Projects/TroubleShootPhonePlayback",
                                vonn = "/home/thadryan/Documents/HomeVault/Projects/VonnegutDeepDive",
                                home = "/home/thadryan/Documents/Vault"
                            },
                            default_workspace = "home"
                        },
                    },
                },
            }
        end
    }
}
-- local neorg_mod = {
--     "nvim-neorg/neorg",
--     ft = "norg",
--     cmd = { "Neorg" },
--     opts = {
--         load = {
--             ["core.defaults"] = {},
--             ["core.concealer"] = {
--                 config = {
--                     icon_preset = "diamond",
--                     icons = {
--                         todo = {
--                             done = {
--                                 icon = "󰸞",
--                             },
--                             on_hold = {
--                                 icon = "󰏤",
--                             },
--                             urgent = {
--                                 icon = "󱈸",
--                             },
--                             uncertain = {
--                                 icon = "",
--                             },
--                             recurring = {
--                                 icon = "",
--                             },
--                             pending = {
--                                 icon = "",
--                             },
--                         },
--                     },
--                 },
--             },
--             ["core.keybinds"] = {
--                 config = {
--                     default_keybinds = true,
--                     neorg_leader = ",",
--                 },
--             },
--             ["core.dirman"] = {
--                 config = {
--                     workspaces = {
--                         notes = "~/notes",
--                     },
--                     default_workspace = "notes",
--                 },
--             },
--             ["core.journal"] = {
--                 config = {
--                     workspace = "notes",
--                     journal_folder = "journal",
--                     strategy = "nested",
--                 },
--             },
--             ["core.export"] = {},
--             ["core.export.markdown"] = {
--                 config = {
--                     extensions = "all",
--                 },
--             },
--             ["core.integrations.telescope"] = {},
--         },
--     },
--     dependencies = {
--         { "nvim-neorg/neorg-telescope" }
--     },
-- }
--
-- function neorg_mod.config(_, opts)
--     require("neorg").setup(opts)
--     vim.api.nvim_exec_autocmds("BufRead", {})
--     vim.defer_fn(function()
--         local ok, cmp = pcall(require, "cmp")
--         if ok then
--             local cmp_opts =
--                 require("lazy.core.plugin").values(require("lazy.core.config").plugins["nvim-cmp"], "opts", false)
--             local neorg = require("neorg.core")
--             local mod_ok = pcall(neorg.modules.load_module, "core.completion", {
--                 engine = "nvim-cmp",
--             })
--             if mod_ok then
--                 table.insert(cmp_opts.sources, { name = "neorg", priority = 6 })
--             end
--             cmp.setup(cmp_opts)
--         end
--     end, 1)
-- end
--
-- return neorg_mod

