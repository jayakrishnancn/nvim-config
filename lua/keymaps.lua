
vim.g.mapleader=" "


local function map(mode, lhs, rhs, desc, opts)
    local options = { noremap = true, silent = true , desc = desc }
    if opts then
        if opts.desc then
            opts.desc = "keymaps.lua: " .. opts.desc
        end
        options = vim.tbl_extend('force', options, opts)
    end
    vim.keymap.set(mode, lhs, rhs, options)
end

-- move between tabs
map('n', '<C-h>','<C-w>h');
map('n', '<C-l>','<C-w>l');
map('n', '<C-j>','<C-w>j');
map('n', '<C-k>', '<C-w>k');

-- write or quit
map('n', '<leader>;q' ,':confirm q<CR>', 'Quit window, without saving.');
map('n', '<leader>w' ,':w!<CR>', 'Save (write)');

-- delete 
map('i', '<M-Backspace>', '<C-w>', 'Backspace using alt+Del')
map('n', '<M-Backspace>', 'db', 'Backspace using alt+Del')

-- buffer list
map('n', '<leader>bq' ,':bd<CR>', "Quit buffer,  without saving.");
--bufferline
map('n','<leader>bj', ':BufferLinePick<CR>', 'Buffer Jump')
map('n','<leader>bL', ':BufferLineSortByExtension<CR>', 'Sort by language')
map('n','<leader>bD', ':BufferLineSortByDirectory<CR>', 'Sort by directory')
map('n','<leader>bl', ':BufferLineCloseRight<CR>', 'Close all to the right')
map('n','<leader>bh', ':BufferLineCloseLeft<CR>', 'Close all to the left')
map('n','<leader>be', ':BufferLinePickClose<CR>', 'Pick which buffer to close')
map('n','<leader>bn', ':BufferLineCycleNext<CR>', 'Next')
map('n','<leader>bb', ':BufferLineCyclePrev<CR>', 'Previous')
map('n','<leader>bf',':Telescope buffers previewer=false<CR>','Find')
map('n','<leader>bq',':bdelete!<CR>','Close Buffer')


-- Plugin
map('n','<leader>pp',':Lazy<CR>','Lazy')
map('n','<leader>pMi', ':MasonToolsInstall<CR>',  'MasonTool Install' )
map('n','<leader>pMu', ':MasonToolsUpdate<CR>','MasonTool Update' )
map('n','<leader>pMc', ':MasonToolsClean<CR>',  'MasonTool Clean')


-- Tab/Shift+tab to indent/dedent
map("v", "<Tab>", ">gv")
map("n", "<Tab>", "v><C-\\><C-N>")
map("v", "<S-Tab>", "<gv")
map("n", "<S-Tab>", "v<<C-\\><C-N>")
map("i", "<S-Tab>", "<C-\\><C-N>v<<C-\\><C-N>^i")



