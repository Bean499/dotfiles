-- Mapper Wrapper
function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Leader
vim.g.mapleader = " "
-- vim.g.mapleader = "\\"

-- Ranger
map("n", "<Leader>fm", ":Ranger<CR>")
map("n", "<Leader>t", ":Telescope find_files<CR>")
map("n", "<Leader>m", ":MinimapToggle<CR>")
map("n", "<Leader>ft", ":NERDTreeToggle<CR>")

-- Dashboard
map("n", "<Leader>df", ":Telescope find_files find_command=rg,--hidden,--files<CR>")
map("n", "<Leader>dn", ":DashboardNewFile<CR>")
map("n", "<Leader>dh", ":DashboardFindHistory<CR>")
map("n", "<Leader>dc", ":Telescope dotfiles path=/home/bean/.config<CR>")
map("n", "<Leader>ds", ":<C-u>SessionSave<CR>")
map("n", "<Leader>dl", ":<C-u>SessionLoad<CR>")
