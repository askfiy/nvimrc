-- https://github.com/nvim-lualine/lualine.nvim
-- https://github.com/SmiteshP/nvim-gps

local gps = require("nvim-gps")

local filetype_table = {
    "NvimTree",
    "aerial"
}

local function disable_built_component()
    local filetype = vim.bo.filetype
    for _, ft in ipairs(filetype_table) do
        if filetype == ft then
            return false
        end
    end
    return true
end

local function enable_built_component()
    local filetype = vim.bo.filetype
    for _, ft in ipairs(filetype_table) do
        if filetype == ft then
            return true
        end
    end
    return false
end

gps.setup()
require("lualine").setup(
    {
        options = {
            icons_enabled = true,
            theme = "auto",
            component_separators = {left = "", right = ""},
            section_separators = {left = "", right = ""},
            disabled_filetypes = {},
            always_divide_middle = true
        },
        sections = {
            lualine_a = {
                {"mode", cond = disable_built_component},
                {"filetype", cond = enable_built_component}
            },
            lualine_b = {
                {"branch", cond = disable_built_component},
                {"diff", cond = disable_built_component},
                {"diagnostics", cond = disable_built_component}
            },
            lualine_c = {
                {"filename", cond = disable_built_component},
                {gps.get_location, cond = gps.is_available}
            },
            lualine_x = {
                {"encoding", cond = disable_built_component},
                {"fileformat", cond = disable_built_component},
                {"filetype", cond = disable_built_component}
            },
            lualine_y = {
                {"progress", cond = disable_built_component}
            },
            lualine_z = {
                {"location", cond = disable_built_component}
            }
        },
        inactive_sections = {
            lualine_a = {},
            lualine_b = {},
            lualine_c = {"filename"},
            lualine_x = {"location"},
            lualine_y = {},
            lualine_z = {}
        },
        tabline = {}
    }
)
