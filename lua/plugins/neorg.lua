return {
    {"nvim-neorg/neorg",
    build = ":Neorg sync-parsers",
    -- dependencies = {{ "nvim-lua/plenary.nvim" }, { "nvim-neorg/neorg-telescope" }},
    config = function()
        require("neorg").setup {
            load = {
                ["core.defaults"] = {}, -- loads default behaviour
                -- ["core.concealer"] = {}, -- adds pretty icons to your documents,
                -- ["core.integrations.telescope"] = {},
                ["core.export"] = {},
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
