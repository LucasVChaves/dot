---@type Base46Table
local M = {}
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


M.base_30 = {
  white = "#ffffff",       -- Text (branco puro)
  black = "#f0f0f0",       -- Fundo principal
  darker_black = "#e8e8e8", -- Fundo mais escuro
  black2 = "#f8f8f8",      -- Fundo secundário
  one_bg = "#e0e0e0",      -- Fundo de borda clara
  one_bg2 = "#d7d7d7",     -- Fundo hover ativo
  one_bg3 = "#cfcfcf",     -- Fundo levemente destacado
  grey = "#b0b0b0",        -- Cinza para elementos inativos
  grey_fg = "#a0a0a0",     -- Cinza de destaque
  grey_fg2 = "#909090",    -- Cinza mais escuro para texto menos importante
  light_grey = "#808080",  -- Cinza claro
  red = "#606060",         -- Comentários
  baby_pink = "#505050",   -- Cores suaves (não usadas aqui)
  pink = "#505050",        -- Cor semelhante a comentários
  line = "#e0e0e0",        -- Linhas de separação
  green = "#222222",       -- Strings, elementos inseridos
  vibrant_green = "#222222",-- Destaques de inserção
  nord_blue = "#d7d7d7",   -- Azul nórdico (ajustado para seleção BG)
  blue = "#111111",        -- Azul padrão (usado em classes/keywords)
  yellow = "#505050",      -- Constantes (suave)
  sun = "#606060",         -- Elementos XML
  purple = "#111111",      -- Keywords, seletores
  dark_purple = "#505050", -- Marcadores fortes
  teal = "#222222",        -- Diferenciações sutis
  orange = "#606060",      -- Constantes e links
  cyan = "#222222",        -- Escape chars
  statusline_bg = "#f8f8f8", -- Fundo da linha de status
  lightbg = "#e8e8e8",     -- Fundo leve (janela ativa)
  pmenu_bg = "#111111",    -- Fundo do menu pop-up
  folder_bg = "#111111",   -- Ícones de pastas
}

M.type = "light"

return M
