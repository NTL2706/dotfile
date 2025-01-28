local status, null_ls = pcall(require, "null-ls")
if (not status) then return end

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local lsp_formatting = function(bufnr)
    vim.lsp.buf.format({
        filter = function(client)
            return client.name == "null-ls"
        end,
        bufnr = bufnr,
    })
end

local root_has_file = function(files)
    return function(utils)
        return utils.root_has_file(files)
    end
end

local opts = {
    eslint_formatting = {
        condition = function(utils)
            local has_eslint = root_has_file(eslint_root_files)(utils)
            local has_prettier = root_has_file(prettier_root_files)(utils)
            return has_eslint and not has_prettier
        end,
    },
    eslint_diagnostics = {
        condition = root_has_file(eslint_root_files),
    },
    prettier_formatting = {
        condition = root_has_file(prettier_root_files),
    },
    stylua_formatting = {
        condition = root_has_file(stylua_root_files),
    },
    elm_format_formatting = {
        condition = root_has_file(elm_root_files),
    },
}

local eslint_root_files = { ".eslintrc", ".eslintrc.js", ".eslintrc.json" }
local prettier_root_files = { ".prettierrc", ".prettierrc.js", ".prettierrc.json" }
local stylua_root_files = { "stylua.toml", ".stylua.toml" }
local elm_root_files = { "elm.json" }

local function on_attach(client, _)
    if client.server_capabilities.document_formatting then
        vim.cmd("command! -buffer Formatting lua vim.lsp.buf.formatting()")
        vim.cmd("command! -buffer FormattingSync lua vim.lsp.buf.formatting_sync()")
    end
end

null_ls.setup({
    sources = {
        null_ls.builtins.diagnostics.eslint_d.with(opts.eslint_diagnostics),
        null_ls.builtins.formatting.eslint_d.with(opts.eslint_formatting),
        null_ls.builtins.formatting.prettier.with(opts.prettier_formatting),
        null_ls.builtins.formatting.stylua.with(opts.stylua_formatting),
        null_ls.builtins.formatting.elm_format.with(opts.elm_format_formatting),
        null_ls.builtins.code_actions.eslint_d.with(opts.eslint_diagnostics),
        -- null_ls.builtins.formatting.black.with({
        --     -- extra_args = { "--line-length", "120" },
        -- }),
        null_ls.builtins.formatting.ruff,
        -- null_ls.builtins.diagnostics.pylint.with({
        --     prefer_local = ".venv/bin",
        --     extra_args = { "--rcfile", ".pylintrc" }
        -- })
    },
    on_attach = on_attach,
})

-- null_ls.setup({
--     sources = {
--         null_ls.builtins.formatting.prettierd.with({
--             condition = function(utils)
--                 return utils.has_file({ ".prettierrc.js" })
--             end,
--         }),
--         null_ls.builtins.diagnostics.eslint.with({
--             diagnostics_format = '[eslint] #{m}\n(#{c})'
--         }),
--         -- null_ls.builtins.diagnostics.fish
--     },
--     on_attach = function(client, bufnr)
--         if client.supports_method("textDocument/formatting") then
--             vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
--             vim.api.nvim_create_autocmd("BufWritePre", {
--                 group = augroup,
--                 buffer = bufnr,
--                 callback = function()
--                     lsp_formatting(bufnr)
--                 end,
--             })
--         end
--     end
-- })

vim.api.nvim_create_user_command(
    'DisableLspFormatting',
    function()
        vim.api.nvim_clear_autocmds({ group = augroup, buffer = 0 })
    end,
    { nargs = 0 }
)
