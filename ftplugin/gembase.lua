print("Gembase file detected.")

local client = vim.lsp.start({
    cmd = { [[C:\projects\gembase-lsp\main]] },
    name = "gamebase-language-server",
    single_file_support = true,
})

if not client then
    vim.notify("Could not attach to the gembasa-language-server.")
    return
end

vim.api.nvim_create_autocmd("Filetype", {
    pattern = "gembase",
    callback = function ()
        vim.lsp.buf_attach_client(0,client)
    end,
})
