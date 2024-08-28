local root_files = {'main.py'}
local paths = vim.fs.find(root_files, {stop = vim.env.HOME})

local root_dir = vim.fs.dirname(paths[1])

if root_dir then
    vim.lsp.start({
        cmd = { 'pylsp' },
        filetypes = { 'python' },
        root_dir = root_dir,
        single_file_support = true,
        settings = {
            pylsp = {
                plugins = {
                    pycodestyle = {
                        ignore = {'W391'},
                        maxLineLength = 100
                    }
                }
            }
        }
    })
end
