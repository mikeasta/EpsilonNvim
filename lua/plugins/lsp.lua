-- Настройка языкового сервера
local lspconfig = require 'lspconfig'
local capabilities = vim.lsp.protocol.make_client_capabilities()

-- Настройка Python
lspconfig.pyright.setup {
  capabilities = capabilities
}




