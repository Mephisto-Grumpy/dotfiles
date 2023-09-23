require('mephisto.base')
require('mephisto.maps')
require('mephisto.plugins')
require('mephisto.highlights')

local has = vim.fn.has
local is_mac = has "macunix"
local is_linux = has "unix"
local is_win = has "win32"
local is_wsl = has "wsl"

if is_mac then
  require('mephisto.macos')
end
if is_linux then
  require('mephisto.linux')
end
if is_win then
  require('mephisto.windows')
end
if is_wsl then
  require('mephisto.wsl')
end
