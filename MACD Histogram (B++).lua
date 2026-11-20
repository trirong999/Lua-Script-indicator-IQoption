
-- =========================================================
-- Social Media Links
-- =========================================================
-- https://www.facebook.com/Indicator.Arrow
-- https://www.youtube.com/@Indicator_Arrow
-- https://www.tiktok.com/@indicator_arrow

instrument{name=string.char(77,65,67,68,32,72,105,115,116,111,103,114,97,109,32,40,66,43,43,41),
  short_name=string.char(77,65,67,68,32,72,105,115,116,111,103,114,97,109,32,40,66,43,43,41),icon=string.char(105,110,100,105,99,97,116,111,114,115,58,79,115,99,105,108,108,97,116,111,114),
  overlay=false}input_group{string.char(77,65,67,68,32,83,101,116,116,105,110,103,115),fastPeriod=input(12,string.char(70,97,115,116,32,80,101,114,105,111,100),input.integer,1,100,1),
  slowPeriod=input(26,string.char(83,108,111,119,32,80,101,114,105,111,100),input.integer,1,100,1),signalPeriod=input(9,string.char(83,105,103,110,97,108,32,80,101,114,105,111,100),
    input.integer,1,100,1)}input_group{string.char(67,111,108,111,114,32,77,111,100,101,32,83,121,115,116,101,109),
  use4Colors=input(true,string.char(85,115,101,32,52,45,67,111,108,111,114,32,77,111,100,101,32,40,70,97,108,115,101,32,61,32,67,108,97,115,115,105,99,32,50,45,67,111,108,111,114,41),
    input.boolean)}input_group{string.char(72,105,115,116,111,103,114,97,109,32,67,111,108,111,114,115,32,83,101,116,116,105,110,103,115),upGrowing=input(string.char(35,48,48,69,54,55,54),
    string.char(80,111,115,105,116,105,118,101,32,47,32,85,112,32,67,111,108,111,114,32,40,66,114,105,103,104,116,32,71,114,101,101,110,41),input.color),downFalling=input(string.char(35,69,70,53,51,53,48),
    string.char(78,101,103,97,116,105,118,101,32,47,32,68,111,119,110,32,67,111,108,111,114,32,40,66,114,105,103,104,116,32,82,101,100,41),input.color),upFalling=input(string.char(35,65,53,68,54,65,55),
    string.char(65,98,111,118,101,32,90,101,114,111,32,38,32,70,97,108,108,105,110,103,32,40,76,105,103,104,116,32,71,114,101,101,110,41),input.color),downGrowing=input(string.char(35,70,70,67,68,68,50),
    string.char(66,101,108,111,119,32,90,101,114,111,32,38,32,71,114,111,119,105,110,103,32,40,76,105,103,104,116,32,82,101,100,41),
    input.color)}input_group{string.char(76,105,110,101,32,84,111,103,103,108,101,115,32,40,83,104,111,119,32,47,32,72,105,100,101,41),
  showHistoLine=input(true,string.char(83,104,111,119,32,72,105,115,116,111,103,114,97,109,32,76,105,110,101),input.boolean),
  showMacdLine=input(true,string.char(83,104,111,119,32,77,65,67,68,32,76,105,110,101),input.boolean),
  showSignal=input(true,string.char(83,104,111,119,32,83,105,103,110,97,108,32,76,105,110,101),input.boolean),
  showZeroLine=input(true,string.char(83,104,111,119,32,90,101,114,111,32,76,105,110,101),
    input.boolean)}input_group{string.char(76,105,110,101,32,67,111,108,111,114,115,32,38,32,83,105,122,101,115),
  histoLineColor=input(string.char(35,70,70,69,65,48,48),string.char(72,105,115,116,111,103,114,97,109,32,76,105,110,101,32,67,111,108,111,114,32,40,89,101,108,108,111,119,41),
    input.color),macdColor=input(string.char(35,50,57,55,57,70,70),string.char(77,65,67,68,32,76,105,110,101,32,67,111,108,111,114),input.color),signalColor=input(string.char(35,70,70,54,68,48,48),
    string.char(83,105,103,110,97,108,32,76,105,110,101,32,67,111,108,111,114),input.color),zeroColor=input(string.char(35,53,53,53,53,53,53),string.char(90,101,114,111,32,76,105,110,101,32,67,111,108,111,114),
    input.color),histoLineWidth=input(2,string.char(72,105,115,116,111,103,114,97,109,32,76,105,110,101,32,87,105,100,116,104),input.integer,1,4,1),
  macdWidth=input(2,string.char(77,65,67,68,32,76,105,110,101,32,87,105,100,116,104),input.integer,1,4,1),signalWidth=input(2,string.char(83,105,103,110,97,108,32,76,105,110,101,32,87,105,100,116,104),
    input.integer,1,4,1),zeroWidth=input(1,string.char(90,101,114,111,32,76,105,110,101,32,87,105,100,116,104),input.integer,1,4,1)}local _a=ema(close,fastPeriod)local _b=ema(close,slowPeriod)local _c=_a-_b local _d=ema(_c,signalPeriod)local _e=_c-_d local _f=upGrowing if use4Colors then if _e>=0 then if _e<_e[1]then _f=upFalling else _f=upGrowing end else if _e<_e[1]then _f=downFalling else _f=downGrowing end end else if _e>=0 then _f=upGrowing else _f=downFalling end end if showZeroLine then hline(0,string.char(90,101,114,111,32,76,105,110,101),zeroColor,zeroWidth)end rect{first=0,second=_e,color=_f,width=0.6}if showHistoLine then plot(_e,string.char(72,105,115,116,111,103,114,97,109,32,76,105,110,101),histoLineColor,histoLineWidth)end if showMacdLine then plot(_c,string.char(77,65,67,68,32,76,105,110,101),macdColor,macdWidth)end if showSignal then plot(_d,string.char(83,105,103,110,97,108,32,76,105,110,101),signalColor,signalWidth)end
