-- Install the Comment.nvim plugin
-- Set the keymap for commenting to CTRL+/
-- vim.keymap.set('n', '<c-/>', 'gcc')
-- vim.keymap.set('v', '<c-/>', 'gcc')

return {
   'numToStr/Comment.nvim',
   opts = {
       -- add any options here
	opleader = {
	    line = '<c-t>',
	}
   },
   lazy = false,
}

