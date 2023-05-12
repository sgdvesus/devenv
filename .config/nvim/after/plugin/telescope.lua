local telescope = require("telescope")
local actions = require("telescope.actions")
local builtin = require("telescope.builtin")
local fb_actions = require("telescope").extensions.file_browser.actions

vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})

-- Telecope file browser extension

local function telescope_buffer_dir()
   return vim.fn.expand("%:p:h")
end


telescope.setup {
  defaults = {
    mappings = {
      n = {
        ["<C-c>"] = actions.close
      },
    },
  },
  extensions = {
    file_browser = {
      theme = "dropdown",
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = true,
      mappings = {
        -- your custom insert mode mappings
        ["i"] = {
            -- issue #3092
         ["<C-w>"] = function() vim.cmd("normal vbd") end,
        },
        ["n"] = {
            -- custom normal mode mappings
            ["%"] = fb_actions.create,
            ["c"] = fb_actions.copy,
            ["r"] = fb_actions.rename,
            ["m"] = fb_actions.move,
            ["d"] = fb_actions.remove,
            ["t"] = fb_actions.change_cwd,
            ["o"] = fb_actions.goto_cwd,
            ["h"] = fb_actions.goto_home_dir,
            ["g"] = fb_actions.goto_parent_dir,
        },
      },
    },
  },
}

telescope.load_extension("file_browser")

vim.keymap.set("n", "<leader>;", builtin.resume)
vim.keymap.set("n", ";d", builtin.diagnostics)
vim.keymap.set("n", "sf", function() telescope.extensions.file_browser.file_browser({
    path = "%:p:h",
    cwd = telescope_buffer_dir(),
    respect_gitignore = false,
    hidden = true,
    grouped = true,
    previewer = false,
    initial_mode = "normal",
    layout_config = { height = 40 }
  })
end)

