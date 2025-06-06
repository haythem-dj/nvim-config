return {
    "mhartington/formatter.nvim",
    event = { "BufWritePre" },
    config = function()
        require("formatter").setup({
            filetype = {
                lua = { require("formatter.filetypes.lua").stylua },
                python = { require("formatter.filetypes.python").blach },
                cpp = { require("formatter.filetypes.cpp").clangformat },
                c = { require("formatter.filetypes.c").clangformat },
                javascript = { require("formatter.filetypes.javascript").prettier },
                typescript = { require("formatter.filetypes.typescript").prettier },
                html = { require("formatter.filetypes.html").prettier },
                css = { require("formatter.filetypes.css").prettier },
                markdown = { require("formatter.filetypes.markdown").prettier },
            }
        })
        vim.api.nvim_create_autocmd("BufWritePost", {
            command = ":FormatWrite"
        })
    end
}
