
-- =========================================================
-- Social Media Links
-- =========================================================
-- https://www.facebook.com/Indicator.Arrow
-- https://www.youtube.com/@Indicator_Arrow
-- https://www.tiktok.com/@indicator_arrow

instrument{name=string.char(82,83,73,32,87,105,108,100,101,114,32,72,105,115,116,111,103,114,97,109,32,40,99,50,41,45,86,50),
  short_name=string.char(73,78,68,65,32,82,83,73,32,87,105,108,100,101,114,32,40,99,50,41,32,86,50),
  icon=string.char(105,110,100,105,99,97,116,111,114,115,58,77,65),overlay=false}input_group{string.char(82,83,73,32,83,101,116,116,105,110,103,115),
  rsiPeriod=input(14,string.char(82,83,73,32,80,101,114,105,111,100),input.integer,1,100,1)}input_group{string.char(82,83,73,32,76,101,118,101,108,115),
  obLevel=input(70,string.char(79,118,101,114,98,111,117,103,104,116,32,55,48),input.integer,50,90,1),midLevel=input(50,string.char(77,105,100,100,108,101,32,53,48),
    input.integer,40,60,1),osLevel=input(30,string.char(79,118,101,114,115,111,108,100,32,51,48),input.integer,10,50,1)}input_group{string.char(72,105,115,116,111,103,114,97,109,32,67,111,108,111,114,115),
  upColor=input(string.char(35,48,48,69,54,55,54),string.char(82,83,73,32,65,98,111,118,101,32,53,48),input.color),downColor=input(string.char(35,69,70,53,51,53,48),string.char(82,83,73,32,66,101,108,111,119,32,53,48),
    input.color)}input_group{string.char(72,105,115,116,111,103,114,97,109,32,69,100,103,101),showHistoEdge
  =input(true,string.char(83,104,111,119,32,89,101,108,108,111,119,32,72,105,115,116,111,103,114,97,109,32,69,100,103,101),
    input.boolean),histoEdgeColor=input(string.char(35,70,70,69,65,48,48),string.char(72,105,115,116,111,103,114,97,109,32,69,100,103,101,32,67,111,108,111,114),
    input.color),histoEdgeWidth=input(2,string.char(72,105,115,116,111,103,114,97,109,32,69,100,103,101,32,87,105,100,116,104),
    input.integer,1,4,1)}input_group{string.char(76,101,118,101,108,32,67,111,108,111,114,115),upperColor=input(string.char(35,48,48,69,54,55,54),string.char(55,48,32,76,101,118,101,108),
    input.color),midColor=input(string.char(35,53,53,53,53,53,53),string.char(53,48,32,76,101,118,101,108),input.color),lowerColor=input(string.char(35,70,70,49,55,52,52),string.char(51,48,32,76,101,118,101,108),
    input.color)}input_group{string.char(76,101,118,101,108,32,87,105,100,116,104),levelWidth=input(1,string.char(76,101,118,101,108,32,87,105,100,116,104),
    input.integer,1,3,1)}local _a=close-close[1]local _b=iff(_a>0,_a,0)local _c=iff(_a<0,-_a,0)local _d=sma(_b,rsiPeriod)local _e=sma(_c,rsiPeriod)local _f=_d local _g=_e _f=iff(_f[1]==_f[1],((_f[1]*(rsiPeriod-1))+_b)/rsiPeriod,_d)_g=iff(_g[1]==_g[1],((_g[1]*(rsiPeriod-1))+_c)/rsiPeriod,_e)local _h=_f/_g local _i=iff(_g==0,100,100-(100/(1+_h)))hline(obLevel,string.char(55,48),upperColor,levelWidth,style.dash_line)hline(midLevel,string.char(53,48),midColor,levelWidth)hline(osLevel,string.char(51,48),lowerColor,levelWidth,style.dash_line)local _j=iff(_i>=midLevel,upColor,downColor)rect{first=midLevel,second=_i,color=_j,width=0.6}if showHistoEdge then plot(_i,string.char(72,105,115,116,111,103,114,97,109,32,69,100,103,101),histoEdgeColor,histoEdgeWidth)end
