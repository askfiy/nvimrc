-- WARN: 配置 sqls
-- https://github.com/lighttiger2505/sqls

return {
    root_dir = function()
        return vim.fn.getcwd()
    end,
    settings = {
        sqls = {
            connections = {
                {
                    -- driver = "mysql",
                    -- dataSourceName = "root:pwd@tcp(127.0.0.1:13306)/world"
                }
            }
        }
    }
}
