---@type Base46Table
local M = {}

M.base_30 = {
   white = "#2c2c2c",   -- Texto principal
   darker_black = "#e8e8e8", -- Fundo mais escuro
   black = "#f0f0f0",   -- Fundo principal
   black2 = "#e4e4e4",  -- Variantes do fundo
   one_bg = "#dcdcdc",  -- Fundo claro
   one_bg2 = "#d4d4d4",
   one_bg3 = "#cccccc",
   grey = "#c4c4c4",    -- Cinza para separadores e bordas
   grey_fg = "#bcbcbc",
   grey_fg2 = "#b4b4b4",
   light_grey = "#acacac",
   red = "#e06c75",     -- Destaques em vermelho (ex.: erros)
   baby_pink = "#ff6c75",
   pink = "#ff75a0",
   line = "#d0d0d0",    -- Cor de linhas (como vertsplit)
   green = "#98c379",   -- Destaques em verde (ex.: strings)
   vibrant_green = "#88b454",
   nord_blue = "#7a8c99",
   blue = "#61afef",    -- Azul para links e funções
   yellow = "#e5c07b",  -- Amarelo para alertas
   sun = "#f0d676",
   purple = "#c678dd",  -- Para palavras-chave (ex.: if, else)
   dark_purple = "#b38bd7",
   teal = "#56b6c2",    -- Azul-esverdeado para suporte
   orange = "#d19a66",  -- Para variáveis constantes e booleans
   cyan = "#56b6c2",    -- Paradd expressões regulares, citações
   statusline_bg = "#eaeaea",  -- Fundo da linha de status
   lightbg = "#e0e0e0", -- Fundos adicionais
   lightbg2 = "#d8d8d8",
   pmenu_bg = "#b4b4b4", -- Fundo do menu suspenso
   folder_bg = "#111111", -- Cor de pastas
}

M.base_16 = {
   base00 = "#f0f0f0", -- Background
   base01 = "#fffffa", -- Lighter Background (status bar)
   base02 = "#d7d7d7", -- Selection Background
   base03 = "#606060", -- Comments
   base04 = "#505050", -- Darker Comments
   base05 = "#111111", -- Default Foreground, Caret, Delimiters, Operators
   base06 = "#222222", -- Lighter Foreground
   base07 = "#fffffc", -- White
   base08 = "#222222", -- Variables, XML Tags, Markup Link Text, Markup Lists, Diff Deleted
   base09 = "#222222", -- Integers, Boolean, Constants, XML Attributes, Markup Link Url
   base0A = "#111111", -- Classes, Markup Bold, Search Text Background
   base0B = "#222222", -- Strings, Inherited Class, Markup Code, Diff Inserted
   base0C = "#222222", -- Support, Regular Expressions, Escape Characters, Markup Quotes
   base0D = "#222222", -- Functions, Methods, Attribute IDs, Headings
   base0E = "#111111", -- Keywords, Storage, Selector, Markup Italic, Diff Changed
   base0F = "#111111", -- Deprecated, Opening/Closing Embedded Language Tags, e.g. `<?php ?>`
}

M.type = "light"

return M
