local db = require('dashboard')

function convert(ascii)
	local lines = {}
	for s in string.gmatch(ascii, "[^\r\n]+") do
	  table.insert(lines, s)
	end
	return lines
end

local home = "/home/bean"

db.custom_center = {
	{icon = '  ',
	desc = 'Load most recent session                ',
	shortcut = 'LDR d l',
	action ='SessionLoad'},
	{icon = '  ',
	desc = 'Recently opened files                   ',
	action =  'DashboardFindHistory',
	shortcut = 'LDR d h'},
	{icon = '  ',
	desc = 'Find file                               ',
	action = 'Telescope find_files find_command=rg,--hidden,--files',
	shortcut = 'LDR d f'},
	{icon = '  ',
	desc = 'Open configuration files                ',
	action = 'Telescope dotfiles path=' .. home ..'/.config',
	shortcut = 'LDR d c'},
	{icon = '  ',
	desc = 'Create New File                         ',
	action = 'DashboardNewFile',
	shortcut = 'LDR d n'},
	{icon = '  ',
	desc ='File browser                            ',
	action =  'Ranger',
	shortcut = 'LDR f m'},
}
                  -- table type and in this table you can set icon,desc,shortcut,action keywords. desc must be exist and type is string
                  -- icon type is nil or string
                  -- shortcut type is nil or string also like icon
                  -- action type can be string or function or nil.
                  -- if you don't need any one of icon shortcut action ,you can ignore it.
-- db.custom_footer  -- type can be nil,table or function(must be return table in function)

-- string type
db.preview_command = "cat | lolcat -F 0.3"
-- string or function type that mean in function you can dynamic generate height width
db.preview_file_path = home .. "/.config/nvim/lua/plugin-config/dashboard.cat"
-- number type
db.preview_file_height = 10
-- number type
db.preview_file_width = 60

-- db.hide_statusline      -- boolean default is true.it will hide statusline in dashboard buffer and auto open in other buffer
-- db.hide_tabline         -- boolean default is true.it will hide tabline in dashboard buffer and auto open in other buffer
-- db.session_directory    -- string type the directory to store the session file
-- db.header_pad           -- number type default is 1
-- db.center_pad           -- number type default is 1
-- db.footer_pad           -- number type default is 1

-- example of db.custom_center for new lua coder,the value of nil mean if you
-- don't need this filed you can not write it
-- db.custom_center = {
--   { icon = 'some icon' desc = 'some description here' } --correct if you don't action filed
--   { desc = 'some description here' }                    --correct if you don't action and icon filed
--   { desc = 'some description here' action = 'Telescope find files'} --correct if you don't icon filed
-- }

-- Highlight Group
-- DashboardHeader DashboardCenter DashboardCenterIcon DashboardShortCut DashboardFooter

-- Command

-- DashboardNewFile  -- if you like use `enew` to create file,Please use this command,it's wrap enew and restore the statsuline and tabline
-- SessionSave,SessionLoad

