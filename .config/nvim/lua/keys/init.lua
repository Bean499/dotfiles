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

-- Summon Ranger
map("n", "<Leader>fm", ":Ranger<CR>")
-- Summon Minimap
map("n", "<Leader>m", ":MinimapToggle<CR>")
-- Summon Filetree
map("n", "<Leader>ft", ":NERDTreeToggle<CR>")

-- Dashboard
map("n", "<Leader>dn", ":DashboardNewFile<CR>")
map("n", "<Leader>oc", ":cd ~/.config/<CR>:Ranger<CR>")
map("n", "<Leader>ds", ":<C-u>SessionSave<CR>")
map("n", "<Leader>dl", ":<C-u>SessionLoad<CR>")
map("n", "<Leader>nnw", ":set nonu wrap<CR>")
map("n", "<Leader>ww", ":set nonu wrap<CR>:VimwikiUISelect<CR>")
