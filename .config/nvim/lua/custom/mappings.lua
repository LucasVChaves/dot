local M = {}

M.crates = {
    n = {
        ["<leader>cua"] = {
            function ()
                require("crates").upgrade_all_crates()
            end,
            "Update all crates"
        }
    }
}

return M
