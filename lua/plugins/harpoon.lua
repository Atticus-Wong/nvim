return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local harpoon = require("harpoon")

      -- REQUIRED
      harpoon:setup({})
      -- REQUIRED

      -- basic telescope configuration
      local conf = require("telescope.config").values
      local themes = require("telescope.themes")

      local function toggle_telescope(harpoon_files)
          local file_paths = {}
          for _, item in ipairs(harpoon_files.items) do
              table.insert(file_paths, item.value)
          end

          require("telescope.pickers").new(
              themes.get_ivy({}), -- apply ivy theme
              {
                  prompt_title = "Harpoon",
                  finder = require("telescope.finders").new_table({
                      results = file_paths,
                  }),
                  previewer = conf.file_previewer({}),
                  sorter = conf.generic_sorter({}),
              }
          ):find()
      end

    local current_index = 1

    local function nav_next()
        local list = harpoon:list()
        if #list.items == 0 then return end
        current_index = current_index % #list.items + 1
        list:select(current_index)
    end

    local function nav_prev()
        local list = harpoon:list()
        if #list.items == 0 then return end
        current_index = (current_index - 2) % #list.items + 1
        list:select(current_index)
    end

      vim.keymap.set("n", "<leader>ha", function() harpoon:list():add() end)
      vim.keymap.set("n", "<leader>he", function() toggle_telescope(harpoon:list()) end,
        { desc = "Open harpoon window" })

      -- Toggle previous & next buffers stored within Harpoon list
      vim.keymap.set("n", "<leader>hp", function() nav_prev() end)
      vim.keymap.set("n", "<leader>hn", function() nav_next() end)
    end
}

