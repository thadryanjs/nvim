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
        " ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
        " ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
        " ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
        " ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
        " ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
        " ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
        "     ____ 󱉟  󰯆  󰋄  󰓥  󰢫  󰴒  󰻀      󰟔   ____      ",         
        "                                                    ",
        "                 󰓠  Thad Edition                    ",         

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
        dashboard.button("h", "󱉽  > Vault Home", ":e /home/thadryan/Documents/Vault/0_working-memory.md<CR> | :NvimTreeOpen<CR>"),
        dashboard.button("q", "  > Quit NVIM", ":qa<CR>"),
        dashboard.button("r", "  > Recent", ":Telescope oldfiles<CR>"),
        dashboard.button("s", "  > Settings", ":e $MYVIMRC | :cd %:p:h<cr>"),
        dashboard.button("u", "  > Update plugins", ":Lazy update<CR>"),
        dashboard.button("w", "󱁿  > View Workspaces", ":Telescope workspaces<CR>")
      }

      local fortune = require("alpha.fortune")
      dashboard.section.footer.val = fortune({
        fortune_list = {

            { "'I tell you, we are here on Earth to fart around, and don't let anybody tell you different.'",
                        "", "— Kurt Vonnegut, 'A Man Without a Country.'" },

            { "'It's a terrible waste to be happy and not notice it.'",
                        "", "— Kurt Vonnegut" },

            { "'We are what we pretend to be, so we must be careful what we pretend to be.'",
                        "", "— Kurt Vonnegut" },

            {"'As stupid and vicious as men are, this is a lovely day.'", 
                        "", "- Kurt Vonnegut"},

            {"'If Jesus was alive today, we would kill him with lethal injection. I call that progress. We would have to kill him for the same reason he was killed the first time. His ideas are just too liberal.'", "- Kurt Vonnegut"},

            {"'Hello babies. Welcome to Earth. It's hot in the summer and cold in the winter. It's round and wet and crowded. On the outside, babies, you've got a hundred years here. There's only one rule that I know of, babies-God damn it, you've got to be kind.'", "- Kurt Vonnegut"},

            {"'We're here to get each other through this thing, whatever it is.'", 
                    "", "- Mark Vonnegut"},

            {"'The most radical, audacious thing to think is that there might be some point to working hard and thinking hard and reading hard and writing hard and trying to be of service'", "-- Mark Vonnegut"}

        }
      })

      -- Send config to alpha
      alpha.setup(dashboard.opts)
    end
  },
}
