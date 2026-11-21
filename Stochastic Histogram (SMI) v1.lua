--[[
=====================================================
    FB: facebook.com/Indicator.Arrow
   :  Stoch Histo (SMI) V1
  website : https://indicatorarrow.vip
=====================================================
--]]

instrument {
    name = string.char(83,116,111,99,104,97,115,116,105,99,32,72,105,115,116,111,103,114,97,109,32,40,83,77,73,41,32,118,49),
    short_name = string.char(83,116,111,99,104,95,72,105,115,116,111,95,115,109,105,95,118,49),
    icon = string.char(105,110,100,105,99,97,116,111,114,115,58,79,115,99,105,108,108,97,116,111,114),
    overlay = false
}

input_group {
    string.char(83,77,73,32,83,101,116,116,105,110,103,115),
    
    kPeriod = input(5, string.char(37,75,32,80,101,114,105,111,100), input.integer, 1, 100, 1),
    smoothPeriod = input(3, string.char(70,105,114,115,116,32,83,109,111,111,116,104,105,110,103,32,80,101,114,105,111,100), input.integer, 1, 100, 1),
    doubleSmoothPeriod = input(3, string.char(83,101,99,111,110,100,32,83,109,111,111,116,104,105,110,103,32,80,101,114,105,111,100), input.integer, 1, 100, 1),
    dPeriod = input(3, string.char(37,68,32,80,101,114,105,111,100), input.integer, 1, 100, 1)
}

input_group {
    string.char(79,118,101,114,98,111,117,103,104,116,32,47,32,79,118,101,114,115,111,108,100,32,70,105,108,116,101,114),
    
    overbought = input(20, string.char(79,118,101,114,98,111,117,103,104,116,32,76,101,118,101,108,32,40,43,50,48,41), input.integer, -100, 100, 1),
    oversold = input(-20, string.char(79,118,101,114,115,111,108,100,32,76,101,118,101,108,32,40,45,50,48,41), input.integer, -100, 100, 1)
}

input_group {
    string.char(72,105,115,116,111,103,114,97,109,32,67,111,108,111,114,115),
    
    upColor = input(string.char(35,49,65,55,50,50,56), string.char(80,111,115,105,116,105,118,101,32,40,85,112,41), input.color),
    downColor = input(string.char(35,65,70,50,69,49,68), string.char(78,101,103,97,116,105,118,101,32,40,68,111,119,110,41), input.color)
}

input_group {
    string.char(76,105,110,101,32,67,111,108,111,114,115),
    
    kColor = input(string.char(35,70,70,69,65,48,48), string.char(83,77,73,32,37,75,32,76,105,110,101), input.color),
    dColor = input(string.char(35,50,57,55,57,70,70), string.char(83,77,73,32,37,68,32,76,105,110,101), input.color),
    zeroColor = input(string.char(35,53,53,53,53,53,53), string.char(90,101,114,111,32,76,105,110,101), input.color),
    obColor = input(string.char(35,48,66,52,55,49,54), string.char(79,118,101,114,98,111,117,103,104,116,32,76,101,118,101,108,32,67,111,108,111,114), input.color),
    osColor = input(string.char(35,55,65,49,52,48,56), string.char(79,118,101,114,115,111,108,100,32,76,101,118,101,108,32,67,111,108,111,114), input.color)
}

input_group {
    string.char(76,105,110,101,32,83,105,122,101),
    
    kWidth = input(2, string.char(37,75,32,87,105,100,116,104), input.integer, 1, 4, 1),
    dWidth = input(2, string.char(37,68,32,87,105,100,116,104), input.integer, 1, 4, 1),
    zeroWidth = input(1, string.char(90,101,114,111,32,87,105,100,116,104), input.integer, 1, 2, 1),
    levelWidth = input(1, string.char(79,66,47,79,83,32,76,101,118,101,108,32,87,105,100,116,104), input.integer, 1, 2, 1)
}


local _a = highest(high, kPeriod)
local _b = lowest(low, kPeriod)


local _c = _a - _b
local _d = close - (_a + _b) / 2


local _e = ema(ema(_d, smoothPeriod), doubleSmoothPeriod)
local _f = ema(ema(_c, smoothPeriod), doubleSmoothPeriod) / 2


local _g = 0
if _f ~= 0 then
    _g = (_e / _f) * 100
end


local _h = ema(_g, dPeriod)


hline(0, string.char(90,101,114,111), zeroColor, zeroWidth)
hline(overbought, string.char(79,118,101,114,98,111,117,103,104,116,32,40,43,50,48,41), obColor, levelWidth, style.dash_line)
hline(oversold, string.char(79,118,101,114,115,111,108,100,32,40,45,50,48,41), osColor, levelWidth, style.dash_line)

rect {
    first = 0,
    second = _g,
    color = iff(_g >= 0, upColor, downColor),
    width = 0.6
}

plot(_g, string.char(83,77,73,32,37,75), kColor, kWidth)
plot(_h, string.char(83,77,73,32,37,68), dColor, dWidth)
