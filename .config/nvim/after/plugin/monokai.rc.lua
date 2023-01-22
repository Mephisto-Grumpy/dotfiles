local status, n = pcall(require, "neosolarized")
if (not status) then return end

n.setup({
  comment_italics = true,
})

local cb = require('colorbuddy.init')
local Color = cb.Color
local colors = cb.colors
local Group = cb.Group
local groups = cb.groups
local styles = cb.styles

Color.new('background', '#0c0c0c')
Color.new('base03', '#343434')
Color.new('base02', '#0c0c0c')
Color.new('base01', '#625e4c')
Color.new('base00', '#75715b')
Color.new("base0", "#f6f6ef")
Color.new("base1", "#d9d9d9")
Color.new("base2", "#c4c5b5")
Color.new("base3", "#343434")
Color.new("black", "#1a1a1a")
Color.new("white", "#e6e6e6")
Color.new("yellow", "#fd971f")
Color.new("orange", "#fd971f")
Color.new("red", "#f4005f")
Color.new("purple", "#f4005f")
Color.new("blue", "#9d65ff")
Color.new("cyan", "#58d1eb")
Color.new("green", "#98e024")
Group.new('Normal', colors.base1, colors.NONE, styles.NONE)
Group.new('Comment', colors.base00, colors.NONE, styles.italic)
Group.new('CursorLine', colors.none, colors.base03, styles.NONE, colors.base1)
Group.new('CursorLineNr', colors.yellow, colors.black, styles.NONE, colors.base1)
Group.new('Visual', colors.none, colors.base03, styles.reverse)

local cError = groups.Error.fg
local cInfo = groups.Information.fg
local cWarn = groups.Warning.fg
local cHint = groups.Hint.fg

Group.new("DiagnosticVirtualTextError", cError, cError:dark():dark():dark():dark(), styles.NONE)
Group.new("DiagnosticVirtualTextInfo", cInfo, cInfo:dark():dark():dark(), styles.NONE)
Group.new("DiagnosticVirtualTextWarn", cWarn, cWarn:dark():dark():dark(), styles.NONE)
Group.new("DiagnosticVirtualTextHint", cHint, cHint:dark():dark():dark(), styles.NONE)
Group.new("DiagnosticUnderlineError", colors.none, colors.none, styles.undercurl, cError)
Group.new("DiagnosticUnderlineWarn", colors.none, colors.none, styles.undercurl, cWarn)
Group.new("DiagnosticUnderlineInfo", colors.none, colors.none, styles.undercurl, cInfo)
Group.new("DiagnosticUnderlineHint", colors.none, colors.none, styles.undercurl, cHint)

Group.new("HoverBorder", colors.yellow, colors.none, styles.NONE)