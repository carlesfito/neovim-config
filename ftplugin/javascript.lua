local root_files = {
    'package.json',
    '.git',
    'jsconfig.json',
    'tsconfig.json'
}

local paths = vim.fs.find(root_files, {stop = vim.env.HOME})
local root_dir = vim.fs.dirname(paths[1])

if root_dir then
    vim.lsp.start({
        init_options = { hostInfo = 'neovim' },
        -- need to end it with cmd to make it work on windows.
        cmd = { 'typescript-language-server.cmd', '--stdio' },
        filetypes = {
            'javascript',
            'javascriptreact',
            'javascript.jsx',
            'typescript',
            'typescriptreact',
            'typescript.tsx',
        },
        root_dir = root_dir,
        single_file_support = true,
    })
end
