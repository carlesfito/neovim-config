local root_files = {'go.work', 'go.mod', '.git'}
local paths = vim.fs.find(root_files, {stop = vim.env.HOME})

local root_dir = vim.fs.dirname(paths[1])

if root_dir then
    vim.lsp.start({
        cmd = { 'gopls' },
        filetypes = { 'go', 'gomod', 'gowork', 'gotmpl' },
        single_file_support = true,
    })
end
