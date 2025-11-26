-- Shows inline git blame
return {
    -- Shows git signs in editor
    {
        "lewis6991/gitsigns.nvim",
        config = function() require("gitsigns").setup() end,
    },
} -- vim: ts=2 sts=2 sw=2 et
