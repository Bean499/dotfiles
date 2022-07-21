function convert(ascii)
	local lines = {}
	for s in string.gmatch(ascii, "[^\r\n]+") do
	  table.insert(lines, s)
	end
	return lines
end

-- Good ascii generator:
-- https://www.coolgenerator.com/ascii-text-generator
local header = [[
                                        68b                 
                                        Y89                 
___  __     ____     _____  ____    ___ ___ ___  __    __   
`MM 6MMb   6MMMMb   6MMMMMb `MM(    )M' `MM `MM 6MMb  6MMb  
 MMM9 `Mb 6M'  `Mb 6M'   `Mb `Mb    d'   MM  MM69 `MM69 `Mb 
 MM'   MM MM    MM MM     MM  YM.  ,P    MM  MM'   MM'   MM 
 MM    MM MMMMMMMM MM     MM   MM  M     MM  MM    MM    MM 
 MM    MM MM       MM     MM   `Mbd'     MM  MM    MM    MM 
 MM    MM YM    d9 YM.   ,M9    YMP      MM  MM    MM    MM 
_MM_  _MM_ YMMMM9   YMMMMM9      M      _MM__MM_  _MM_  _MM_
]]

-- local footer = [[
-- "A merry heart doeth good like a medicine"
-- ]]

vim.g.dashboard_custom_header = convert(header)
-- vim.g.dashboard_custom_footer = convert(footer)

vim.g.dashboard_default_executive = 'telescope'

vim.g.dashboard_custom_shortcut = {
	['last_session'] = 'SPC d l',
    ['find_history'] = 'SPC d h',
    ['find_file'] = 'SPC d f',
    ['change_colorscheme'] = 'SPC d c',
    ['new_file'] = 'SPC d n',
    ['find_word'] = 'SPC d w',
	['book_marks'] = 'SPC d b'
}

vim.g.dashboard_custom_shortcut_icon = {
	['last_session'] = ' ',
	['find_history'] = ' ',
	['find_file'] = ' ',
	['new_file'] = ' ',
	['change_colorscheme'] = ' ',
	['find_word'] = ' ',
	['book_marks'] = ' ',
}
