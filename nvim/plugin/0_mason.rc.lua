local status_mason, mason = pcall(require, "mason")
if (not status_mason) then return end
local status_lspconfig, mason_lspconfig = pcall(require, "mason-lspconfig")
if (not status_lspconfig) then return end

mason.setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    },
    PATH = "prepend"
})

mason_lspconfig.setup {
    automatic_installation = false,
    ensure_installed = { "lua_ls", "tsserver", "eslint", "pylsp", "pyright" },
    handlers = nil
}
