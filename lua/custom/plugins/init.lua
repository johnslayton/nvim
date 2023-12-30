-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
--
--
return {
        "ThePrimeagen/harpoon",
	branch = "harpoon2",
	config = function()
		local harpoon = require("harpoon")
		---@diagnostic disable-next-line: missing-parameter
		harpoon:setup()
		local function map(lhs, rhs, opts)
                vim.keymap.set("n", lhs, rhs, opts or {})
		end
		map("<leader>t", function() harpoon:list():append() end)
		map("<leader>h", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
		map("<c-h><c-h>", function() harpoon:list():select(1) end)
		map("<c-h><c-j>", function() harpoon:list():select(2) end)
		map("<c-h><c-k>", function() harpoon:list():select(3) end)
		map("<c-h><c-l>", function() harpoon:list():select(4) end)
	end
}
