return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			close_if_last_window = true,
			filesystem = {
				filtered_items = {
					hide_dotfiles = false,
					hide_gitignored = true,
          never_show = {
            ".git"
          }
				},
			},
		})
		vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left<CR>", {})
		vim.keymap.set("n", "<leader>t", ":Neotree filesystem reveal left<CR>", {})
	end,
}
