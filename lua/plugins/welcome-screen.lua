return {
  -- dashboard to greet
  { 'goolord/alpha-nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons'},
    config = function()
      local alpha = require("alpha")
      local dashboard = require("alpha.themes.dashboard")
      local tree = require("nvim-tree")

      -- Set header
      dashboard.section.header.val = {
        "                                                    ",
        " ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
        " ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
        " ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
        " ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
        " ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
        " ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
        "                                                    ",
      }

--       dashboard.section.header.val = {
--            "                              .............                                   ", 
--            "                        ..';;,...       .....   .......                       ",
--            "                       ''.'...              ';'..........                     ",
--            "                       ..';,.',.         .,::c;.        ..                    ",
--            "                          .;,'.         .::.            ';......              ",
--            "                       .''::;;,.     ....              ,:'     ..             ",
--            "                       .;c,'ldlc;.    ...;'  ..       .;.       '.            ",
--            "                       ... 'loc:ll.  ',';lc,'...'.    ,.        ..            ",
--            "                     ...   'dddkd:..:c::lc::'.';;.   .,.       ..             ",
--            "                   ...     ;oo:'   ,;,okdc.;:''.     .'       .:;.            ",
--            "                 ...       ..     .cllodl::od:.      :l'..    ....'.          ",
--            "              ....               .;ldllol;..lc.....  :l.          .'.         ",
--            "           .....                  ,;',ldc. .l,   .;:,::.          .'          ",
--            "          .;;..........cl:::.    .c,  ,c'  ,o;.  .;c:.'.         .'.          ",
--            "                       ;doxx'   .c:   ....'c:,. .'.,. '.        .'.           ",
--            "                       cOk0O,   ,;        .',;;.;:c:. .'. ..  .,:'            ",
--            "                   ...,xKKKd.  .'.          ,clokxl;.. .....    .'.           ",
--            "                 ..;ooloodx:                 .;cl,               .'.          ",
--            "                         .:.                 ...,.        ..   ..'.           ",
--            "                         .:.                   .,.         ......             ",
--            "                         .;.                   ..                             ",
--            "                         .;.                                                  ",
--            "                         .;'                                                  ",
--            "                          ,,                                                  ",
--            "                          ';.                                                 ",
--            "                          .;'                                                 ",
--            "                           ..                                                 "
--         }

        -- Set menu
        dashboard.section.buttons.val = {
        dashboard.button("b", "󰂺  > Bookmarks", ":TelescopeBookmarks<CR>"),
        dashboard.button("e", "  > New file", ":ene <BAR> startinsert <CR>"),
        dashboard.button("f", "  > Find file", ":Telescope find_files<CR>"),
        dashboard.button("r", "  > Recent", ":Telescope oldfiles<CR>"),
        dashboard.button("s", "  > Settings", ":e $MYVIMRC | :cd %:p:h<cr>"),
        dashboard.button("h", "󱉽  > Vault Home", ":e /home/thadryan/Documents/Vault/Home.md<CR> | :NvimTreeOpen<CR>"),
        dashboard.button("q", "  > Quit NVIM", ":qa<CR>"),
        dashboard.button("u", "  > Update plugins", ":Lazy update<CR>")
      }

      local fortune = require("alpha.fortune")
      dashboard.section.footer.val = fortune({
        fortune_list = {

          { "'I tell you, we are here on Earth to fart around, and don't let anybody tell you different.'",
                        "", "— Kurt Vonnegut, 'A Man Without a Country.'" },


        }
      })

      -- Send config to alpha
      alpha.setup(dashboard.opts)
    end
  },
}
