require("telescope").setup {
  extensions = {
    project = {
      base_dirs = {
        "~/dev/src",
        { "~/dev/src2" },
        { "~/dev/src3", max_depth = 4 },
        { path = "~/dev/src4" },
        { path = "~/dev/src5", max_depth = 2 },
      },
      hidden_files = true, -- default: false
      theme = "dropdown",
      order_by = "asc",
      sync_with_nvim_tree = true, -- default false
    },
  },
}

vim.api.nvim_set_keymap(
  "n",
  "<C-p>",
  ":lua require'telescope'.extensions.project.project{}<CR>",
  { noremap = true, silent = true }
)
