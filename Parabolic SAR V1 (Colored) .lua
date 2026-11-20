
-- =========================================================
-- Social Media Links
-- =========================================================
-- https://www.facebook.com/Indicator.Arrow
-- https://www.youtube.com/@Indicator_Arrow
-- https://www.tiktok.com/@indicator_arrow

instrument{name=string.char(80,97,114,97,98,111,108,105,99,32,83,65,82,32,86,49,32,40,67,111,108,111,114,101,100,41),short_name=string.char(83,65,82,95,80,114,111,95,86,49),overlay=true}input_group{string.char(80,97,114,97,98,111,108,105,99,32,83,65,82,32,83,101,116,116,105,110,103,115),show_sar=input{default=true,type=input.plot_visibility},sar_start=input(0.02,string.char(83,65,82,32,83,116,97,114,116),input.double,0.001,0.1,0.001),sar_increment=input(0.02,string.char(83,65,82,32,73,110,99,114,101,109,101,110,116),input.double,0.001,0.1,0.001),sar_max=input(0.2,string.char(83,65,82,32,77,97,120,105,109,117,109),input.double,0.01,1.0,0.01)}input_group{string.char(83,65,82,32,68,105,115,112,108,97,121),bull_color=input{default=string.char(35,48,56,57,57,56,49),type=input.color},bear_color=input{default=string.char(35,70,50,51,54,52,53),type=input.color},sar_width=input{default=1,type=input.line_width}}sar_value=sar(sar_start,sar_increment,sar_max)sar_color=(close>sar_value)and bull_color or bear_color if show_sar then plot(sar_value,string.char(80,97,114,97,98,111,108,105,99,32,83,65,82,32,86,49,46,50),sar_color,sar_width,0,style.points)end