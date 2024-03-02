local harpoon -- Ensure we only interact with local harpoon object 🦈

return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2', -- Temp; Will be merged soonish 🔥
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  config = function ()
    harpoon = require("harpoon"):setup() -- Notice we're storing to parent context 👆
    local ui = harpoon.ui

    vim.keymap.set("n", "<leader>ht", function() harpoon:list():append() end)
    vim.keymap.set("n", "<leader>he", function() harpoon:list():remove() end)
    vim.keymap.set("n", "<leader>hm", function() ui:toggle_quick_menu(harpoon:list()) end)

    vim.keymap.set("n", "<C-1>", function() harpoon:list():select(1) end)
    vim.keymap.set("n", "<C-2>", function() harpoon:list():select(2) end)
    vim.keymap.set("n", "<C-3>", function() harpoon:list():select(3) end)
    vim.keymap.set("n", "<C-4>", function() harpoon:list():select(4) end)
  end,
}
