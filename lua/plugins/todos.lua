return {
    {"AmeerTaweel/todo.nvim", config = function()
        require("todo").setup(
            {
                keywords = {
                    TASK = { icon = " ", color = "info" }
                }
            }
        )
    end
    }
}
