--[[
=====================================================
FB: facebook.com/Indicator.Arrow
=====================================================
]]

instrument{name=string.char(71,82,32,77,65,32,49,48,32,84,114,101,110,100,32,76,105,110,101,32,67,108,111,117,100,32,40,103,114,101,101,110,32,114,101,100,41,32,86,49),overlay=true}period
=input(2,string.char(77,65,32,80,101,114,105,111,100),input.integer,1)source=input(1,string.char(83,111,117,114,99,101),input.string_selection,inputs.titles_overlay)fn
=input(1,string.char(77,65,32,84,121,112,101),input.string_selection,averages.titles)input_group{string.char(68,105,115,112,108,97,121,32,83,101,116,116,105,110,103,115),show_ma
=input(true,string.char(83,104,111,119,32,82,97,105,110,98,111,119,32,76,105,110,101,115,32,40,49,48,32,76,105,110,101,115,41),
input.boolean),show_curtain=input(true,string.char(83,104,111,119,32,68,121,110,97,109,105,99,32,83,47,82,32,67,108,111,117,100),
input.boolean),line_width_outer=input(2,string.char(79,117,116,101,114,32,76,105,110,101,115,32,87,105,100,116,104,32,40,77,65,49,32,38,32,77,65,49,48,41),
input.line_width),line_width_inner=input(1,string.char(73,110,110,101,114,32,76,105,110,101,115,32,87,105,100,116,104,32,40,77,65,50,32,45,32,77,65,57,41),
input.line_width)}input_group{string.char(84,114,101,110,100,32,67,111,108,111,114,115),line_up_color=input(string.char(35,50,53,69,49,53,52),
string.char(85,112,116,114,101,110,100,32,76,105,110,101,32,67,111,108,111,114),input.color),line_down_color=input(string.char(35,70,70,54,67,53,56),
string.char(68,111,119,110,116,114,101,110,100,32,76,105,110,101,32,67,111,108,111,114),input.color),fill_up_color
=input(rgba(37,225,84,0.15),string.char(85,112,116,114,101,110,100,32,67,108,111,117,100,32,67,111,108,111,114),
input.color),fill_down_color=input(rgba(255,108,88,0.15),string.char(68,111,119,110,116,114,101,110,100,32,67,108,111,117,100,32,67,111,108,111,114),input.color)}local _a=inputs[source]local _b=averages[fn]ma1=_b(_a,period)ma2=_b(ma1,period)ma3=_b(ma2,period)ma4=_b(ma3,period)ma5=_b(ma4,period)ma6=_b(ma5,period)ma7
=_b(ma6,period)ma8=_b(ma7,period)ma9=_b(ma8,period)ma10=_b(ma9,period)is_uptrend=ma1>=ma10 local _c=is_uptrend and line_up_color or line_down_color if show_ma then plot(ma1,string.char(77,65,49),_c,line_width_outer)plot(ma2,string.char(77,65,50),_c,line_width_inner)plot(ma3,string.char(77,65,51),_c,line_width_inner)
plot(ma4,string.char(77,65,52),_c,line_width_inner)plot(ma5,string.char(77,65,53),_c,line_width_inner)plot(ma6,string.char(77,65,54),_c,line_width_inner)
plot(ma7,string.char(77,65,55),_c,line_width_inner)plot(ma8,string.char(77,65,56),_c,line_width_inner)plot(ma9,string.char(77,65,57),_c,line_width_inner)
plot(ma10,string.char(77,65,49,48),_c,line_width_outer)else plot(ma1,string.char(85,112,112,101,114,32,66,111,117,110,100,97,114,121,32,40,77,65,49,41),_c,line_width_outer)
plot(ma10,string.char(76,111,119,101,114,32,66,111,117,110,100,97,114,121,32,40,77,65,49,48,41),_c,line_width_outer)end if show_curtain then fill(ma1,ma10,string.char(68,121,110,97,109,105,99,32,83,47,82,32,67,108,111,117,100,32,90,111,110,101),is_uptrend and fill_up_color or fill_down_color)end
