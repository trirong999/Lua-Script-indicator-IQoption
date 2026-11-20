
-- =========================================================
-- Social Media Links
-- =========================================================
-- https://www.facebook.com/Indicator.Arrow
-- https://www.youtube.com/@Indicator_Arrow
-- https://www.tiktok.com/@indicator_arrow

instrument{name=string.char(82,83,73,32,90,111,110,101,32,67,97,110,100,108,101,115,116,105,99,107,115,32,99,111,108,111,114),
  overlay=false}input_group{string.char(82,83,73,32,83,101,116,116,105,110,103,115),rsi_period=input(14,string.char(82,83,73,32,80,101,114,105,111,100),
    input.integer,1,100),ob_zone=input(70,string.char(79,118,101,114,98,111,117,103,104,116,32,90,111,110,101),input.integer,50,95),os_zone=input(30,string.char(79,118,101,114,115,111,108,100,32,90,111,110,101),
    input.integer,5,50)}input_group{string.char(82,83,73,32,83,108,111,112,101,32,83,101,116,116,105,110,103,115),slope_threshold=input(1.0,string.char(83,108,111,112,101,32,84,104,114,101,115,104,111,108,100),
    input.double,0.1,10,0.1)}input_group{string.char(68,105,115,112,108,97,121,32,83,101,116,116,105,110,103,115),show_rsi_line=input(true,string.char(83,104,111,119,32,82,83,73,32,76,105,110,101),
    input.boolean),show_zone_bg=input(true,string.char(83,104,111,119,32,90,111,110,101,32,66,97,99,107,103,114,111,117,110,100),input.boolean),show_ma=input(true,string.char(83,104,111,119,32,82,83,73,32,77,65),
    input.boolean)}input_group{string.char(82,83,73,32,83,105,103,110,97,108,32,77,65,32,83,101,116,116,105,110,103,115),ma_period=input(9,string.char(77,65,32,80,101,114,105,111,100),
    input.integer,1,100)}input_group{string.char(90,111,110,101,32,66,97,99,107,103,114,111,117,110,100,32,67,111,108,111,114,115),ob_bg_color=input(rgba(255,50,50,0.12),
    string.char(79,118,101,114,98,111,117,103,104,116,32,66,71,32,67,111,108,111,114),input.color),os_bg_color=input(rgba(0,200,100,0.12),string.char(79,118,101,114,115,111,108,100,32,66,71,32,67,111,108,111,114),
    input.color)}input_group{string.char(82,83,73,32,67,111,108,111,114,115),rsi_color=input(string.char(35,70,70,68,55,48,48),string.char(82,83,73,32,76,105,110,101),
    input.color),bull_color=input(string.char(35,48,48,48,48,70,70),string.char(82,83,73,32,82,105,115,105,110,103,32,45,32,66,108,117,101),input.color),bear_color=input(string.char(35,70,70,48,48,48,48),
    string.char(82,83,73,32,70,97,108,108,105,110,103,32,45,32,82,101,100),input.color),ma_color=input(string.char(35,48,48,70,70,70,70),string.char(82,83,73,32,77,65,32,67,111,108,111,114),
    input.color)}local _a=rsi(close,rsi_period)local _b=sma(_a,ma_period)plot(100,string.char(84,111,112,32,66,111,117,110,100),
  string.char(114,103,98,97,40,48,44,48,44,48,44,48,41),1)plot(0,string.char(66,111,116,116,111,109,32,66,111,117,110,100),
  string.char(114,103,98,97,40,48,44,48,44,48,44,48,41),1)if show_zone_bg then fill_area{first=100,second=ob_zone,color=ob_bg_color}fill_area{first=os_zone,second=0,color=os_bg_color}end hline(90,string.char(57,48),
  string.char(114,103,98,97,40,50,53,53,44,50,53,53,44,50,53,53,44,48,46,49,41),1)hline(80,string.char(56,48),string.char(114,103,98,97,40,50,53,53,44,50,53,53,44,50,53,53,44,48,46,49,41),1)hline(70,string.char(55,48),
  string.char(35,70,70,53,53,53,53),2)hline(60,string.char(54,48),string.char(114,103,98,97,40,50,53,53,44,50,53,53,44,50,53,53,44,48,46,49,41),1)hline(50,string.char(77,105,100,100,108,101),
  string.char(35,70,70,68,55,48,48),1)hline(40,string.char(52,48),string.char(114,103,98,97,40,50,53,53,44,50,53,53,44,50,53,53,44,48,46,49,41),1)hline(30,string.char(51,48),
  string.char(35,48,48,70,70,54,54),2)hline(20,string.char(50,48),string.char(114,103,98,97,40,50,53,53,44,50,53,53,44,50,53,53,44,48,46,49,41),1)hline(10,string.char(49,48),
  string.char(114,103,98,97,40,50,53,53,44,50,53,53,44,50,53,53,44,48,46,49,41),1)hline(ob_zone,string.char(67,117,115,116,111,109,32,79,118,101,114,98,111,117,103,104,116),
  string.char(35,70,70,57,57,57,57),2)hline(os_zone,string.char(67,117,115,116,111,109,32,79,118,101,114,115,111,108,100),
  string.char(35,57,57,70,70,57,57),2)local _c=_a[1]local _d=_a local _e=max(_a,_a[1])local _f=min(_a,_a[1])local _g=_a-_a[1]local _h if _g>slope_threshold then _h=bull_color elseif _g<-slope_threshold then _h=bear_color else _h=string.char(35,70,70,70,70,70,70)end plot_candle(_c,_e,_f,_d,string.char(82,83,73,32,68,105,114,101,99,116,105,111,110,32,67,97,110,100,108,101,115),_h)if show_rsi_line then plot(_a,string.char(82,83,73,32,76,105,110,101),rsi_color,2)end if show_ma then plot(_b,string.char(82,83,73,32,77,65),ma_color,2)end
