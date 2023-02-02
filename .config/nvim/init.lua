require('mephisto.base')
require('mephisto.highlights')
require('mephisto.maps')
require('mephisto.plugins')

local has = vim.fn.has
local is_mac = has "macunix"
local is_win = has "win32"

if is_mac then
  require('mephisto.macos')
end
if is_win then
  require('mephisto.windows')
end
