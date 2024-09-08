return {
  "LintaoAmons/bookmarks.nvim",
  tag = "v0.5.4", -- optional, pin the plugin at specific version for stability
  dependencies = {
    { "nvim-telescope/telescope.nvim" },
    { "stevearc/dressing.nvim" }, -- optional: to have the same UI shown in the GIF
  },
  keys = {
    { "mm", "<cmd>BookmarksMark<cr>",       desc = "Mark current line into active BookmarkList." },
    { "mo", "<cmd>BookmarksGoto<cr>",       desc = "Go to bookmark at current active BookmarkList." },
    { "ma", "<cmd>BookmarksCommands<cr>",   desc = "Find and trigger a bookmark command." },
    { "mg", "<cmd>BookmarksGotoRecent<cr>", desc = "Go to latest visited/created Bookmark." },
    { "mt", "<cmd>BookmarksTree<cr>",       desc = "Display all bookmarks with tree-view." },
  },
  enabled = false,
}
