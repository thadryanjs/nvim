return{
    {
    "kiyoon/jupynium.nvim",
    build = "pip3 install --user .",
    -- build = "conda run --no-capture-output -n jupynium pip install .",
    -- enabled = vim.fn.isdirectory(vim.fn.expand "~/miniconda3/envs/jupynium"),
    config = function()
        require("jupynium").setup({
            python_host = { "conda", "run", "--no-capture-output", "-n", "jupy", "python" },
            jupyter_command = { "conda", "run", "--no-capture-output", "-n", "jupy", "jupyter" },
            default_notebook_URL = "localhost:8889"

        })
    end

    }
  -- "hrsh7th/nvim-cmp",       -- optional, for completion
  -- "rcarriga/nvim-notify",   -- optional
  -- "stevearc/dressing.nvim", -- optional, UI for :JupyniumKernelSelect
}
