return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local telescope = require("telescope")
        telescope.setup {
            pickers = {
                find_files = {
                    hidden = true,
                },
            },
            defaults = {
                file_ignore_patterns = { "%.git/", "%.local/share/nvim/" },
            },
        }

        vim.keymap.set("n", "<C-p>", function()
            require("telescope.builtin").find_files()
        end, { desc = "Find files with Telescope" })
        
    end
}
