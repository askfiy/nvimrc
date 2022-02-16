return {
    root_dir = function()
        return vim.fn.getcwd()
    end,
    -- 禁用 Pyright 的诊断信息（使用 pylint）
    handlers = {
        ---@diagnostic disable-next-line: unused-vararg
        ["textDocument/publishDiagnostics"] = function(...)
        end
    },
    settings = {
        python = {
            analysis = {
                typeCheckingMode = "off"
            }
        }
    }
}
