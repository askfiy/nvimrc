-- https://github.com/AndrewRadev/switch.vim

-- NOTE: switch 手动定义需要增加的反意单词
local switch_words = {
    {"true", "false"},
    {"on", "off"},
    {"yes", "no"},
    {"disable", "enable"},
    {"+", "-"},
    {">", "<"},
    {"=", "!="}
}

-- 定义增加单词的容器
local push_words = {}

for _, value in ipairs(switch_words) do
    local w1, w2 = value[1], value[2]
    -- 全小写
    table.insert(push_words, value)
    -- 全大写
    table.insert(push_words, {string.upper(w1), string.upper(w2)})
    -- 首字母大写，%l 代表小写字母，只取第一个
    w1, _ = string.gsub(w1, "^%l", string.upper)
    w2, _ = string.gsub(w2, "^%l", string.upper)
    table.insert(push_words, {w1, w2})
end

-- 放入全局变量
vim.g.switch_custom_definitions = push_words

vim.u.keymap.register_key("switch")
