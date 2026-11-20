
-- =========================================================
-- Social Media Links
-- =========================================================
-- https://www.facebook.com/Indicator.Arrow
-- https://www.youtube.com/@Indicator_Arrow
-- https://www.tiktok.com/@indicator_arrow

instrument{name=string.char(66,114,101,97,107,111,117,116,32,72,105,103,104,32,76,111,119,32,65,114,114,111,119,32,65,43,32,86,50),
  short_name=string.char(66,79,32,72,76,32,65,114,114,111,119,32,65,43,32,86,50),icon=string.char(105,110,100,105,99,97,116,111,114,115,58,70,114,97,99,116,97,108),
  overlay=true}input_group{string.char(76,105,110,101,32,49,32,83,101,116,116,105,110,103,115),enableLine1=input(true,string.char(83,104,111,119,32,76,105,110,101,32,49),input.boolean),
  mode1=input(1,string.char(77,111,100,101,32,76,105,110,101,32,49),input.string_selection,{string.char(49,46,32,82,101,97,108,32,67,108,111,115,101,32,40,77,65,32,49,41),
      string.char(50,46,32,77,105,100,32,67,97,110,100,108,101,32,40,72,43,76,41,47,50),string.char(51,46,32,87,101,105,103,104,116,101,100,32,40,72,43,76,43,67,42,50,41,47,52),
      string.char(52,46,32,79,112,101,110,32,80,114,105,99,101)}),color1=input(string.char(35,69,54,67,50,50,57),
    string.char(67,111,108,111,114,32,49),input.color),width1=input(2,string.char(87,105,100,116,104,32,49),
    input.integer,1,10,1)}input_group{string.char(76,105,110,101,32,50,32,83,101,116,116,105,110,103,115),enableLine2=input(true,string.char(83,104,111,119,32,76,105,110,101,32,50),
    input.boolean),mode2=input(2,string.char(77,111,100,101,32,76,105,110,101,32,50),input.string_selection,{string.char(49,46,32,82,101,97,108,32,67,108,111,115,101,32,40,77,65,32,49,41),
      string.char(50,46,32,77,105,100,32,67,97,110,100,108,101,32,40,72,43,76,41,47,50),string.char(51,46,32,87,101,105,103,104,116,101,100,32,40,72,43,76,43,67,42,50,41,47,52),
      string.char(52,46,32,79,112,101,110,32,80,114,105,99,101)}),color2=input(string.char(35,50,65,57,68,56,70),string.char(67,111,108,111,114,32,50),input.color),width2=input(3,string.char(87,105,100,116,104,32,50),
    input.integer,1,10,1)}input_group{string.char(76,105,110,101,32,51,32,83,101,116,116,105,110,103,115),enableLine3=input(true,string.char(83,104,111,119,32,76,105,110,101,32,51),
    input.boolean),mode3=input(3,string.char(77,111,100,101,32,76,105,110,101,32,51),input.string_selection,{string.char(49,46,32,82,101,97,108,32,67,108,111,115,101,32,40,77,65,32,49,41),
      string.char(50,46,32,77,105,100,32,67,97,110,100,108,101,32,40,72,43,76,41,47,50),string.char(51,46,32,87,101,105,103,104,116,101,100,32,40,72,43,76,43,67,42,50,41,47,52),
      string.char(52,46,32,79,112,101,110,32,80,114,105,99,101)}),color3=input(string.char(35,69,55,54,70,53,49),string.char(67,111,108,111,114,32,51),
    input.color),width3=input(2,string.char(87,105,100,116,104,32,51),input.integer,1,10,1)}input_group{string.char(76,105,110,101,32,52,32,83,101,116,116,105,110,103,115),
  enableLine4=input(true,string.char(83,104,111,119,32,76,105,110,101,32,52),input.boolean),mode4=input(4,string.char(77,111,100,101,32,76,105,110,101,32,52),
    input.string_selection,{string.char(49,46,32,82,101,97,108,32,67,108,111,115,101,32,40,77,65,32,49,41),string.char(50,46,32,77,105,100,32,67,97,110,100,108,101,32,40,72,43,76,41,47,50),
      string.char(51,46,32,87,101,105,103,104,116,101,100,32,40,72,43,76,43,67,42,50,41,47,52),string.char(52,46,32,79,112,101,110,32,80,114,105,99,101)}),color4=input(string.char(35,57,68,52,69,68,68),
    string.char(67,111,108,111,114,32,52),input.color),width4=input(2,string.char(87,105,100,116,104,32,52),
    input.integer,1,10,1)}input_group{string.char(84,114,101,110,100,32,70,105,108,116,101,114,32,83,101,116,116,105,110,103,115),enableTrend=input(true,string.char(83,104,111,119,32,84,114,101,110,100,32,76,105,110,101),
    input.boolean),useTrendFilter=input(false,string.char(70,105,108,116,101,114,32,65,114,114,111,119,115,32,98,121,32,84,114,101,110,100),
    input.boolean),trendPeriod=input(13,string.char(84,114,101,110,100,32,80,101,114,105,111,100,32,40,69,77,65,41),input.integer,1,200,1),upColor=input(string.char(35,48,48,53,53,70,70),
    string.char(66,117,108,108,105,115,104,32,67,111,108,111,114,32,40,66,108,117,101,41),input.color),downColor=input(string.char(35,70,70,49,52,57,51),
    string.char(66,101,97,114,105,115,104,32,67,111,108,111,114,32,40,80,105,110,107,41),input.color),trendWidth=input(3,string.char(84,114,101,110,100,32,76,105,110,101,32,87,105,100,116,104),
    input.integer,1,10,1)}input_group{string.char(65,114,114,111,119,32,83,105,103,110,97,108,32,83,101,116,116,105,110,103,115),enableArrows=input(true,
    string.char(83,104,111,119,32,66,117,121,47,83,101,108,108,32,65,114,114,111,119,115),
    input.boolean),
  requireCandleColor=input(true,string.char(82,101,113,117,105,114,101,32,67,97,110,100,108,101,32,67,111,108,111,114,32,77,97,116,99,104,32,40,66,117,121,61,71,114,101,101,110,44,32,83,101,108,108,61,82,101,100,41),
    input.boolean),callColor=input(string.char(35,48,48,69,54,55,54),string.char(67,97,108,108,32,65,114,114,111,119,32,67,111,108,111,114),input.color),putColor=input(string.char(35,70,70,53,50,53,50),
    string.char(80,117,116,32,65,114,114,111,119,32,67,111,108,111,114),input.color)}input_group{string.char(67,111,110,115,101,99,117,116,105,118,101,32,67,97,110,100,108,101,32,70,105,108,116,101,114),
  enableConsecutiveFilter=input(false,string.char(66,108,111,99,107,32,65,102,116,101,114,32,67,111,110,115,101,99,117,116,105,118,101,32,67,97,110,100,108,101,115),input.boolean),
  consecutiveCount=input(2,string.char(80,114,101,118,105,111,117,115,32,67,111,110,115,101,99,117,116,105,118,101,32,67,97,110,100,108,101,115),
    input.integer,1,10,1)}local _a=close if enableLine1 then if mode1==1 then _a=close elseif mode1==2 then _a=(high+low)/2 elseif mode1==3 then _a=(high+low+(close*2))/4 elseif mode1==4 then _a=open end plot(_a,string.char(76,105,110,101,32,49),color1,width1)end local _b=(high+low)/2 if enableLine2 then if mode2==1 then _b=close elseif mode2==2 then _b=(high+low)/2 elseif mode2==3 then _b=(high+low+(close*2))/4 elseif mode2==4 then _b=open end plot(_b,string.char(76,105,110,101,32,50),color2,width2)end local _c=close if enableLine3 then if mode3==1 then _c=close elseif mode3==2 then _c=(high+low)/2 elseif mode3==3 then _c=(high+low+(close*2))/4 elseif mode3==4 then _c=open end plot(_c,string.char(76,105,110,101,32,51),color3,width3)end local _d=close if enableLine4 then if mode4==1 then _d=close elseif mode4==2 then _d=(high+low)/2 elseif mode4==3 then _d=(high+low+(close*2))/4 elseif mode4==4 then _d=open end plot(_d,string.char(76,105,110,101,32,52),color4,width4)end local _e=ema(close,trendPeriod)local _f=close>_e and _e>_e[1]local _g=close<_e and _e<_e[1]local _h=_f and upColor or downColor if enableTrend then plot(_e,string.char(84,114,101,110,100,32,76,105,110,101),_h,trendWidth)end if enableArrows then local _i=close>high[1]local _j=close<low[1]local _k=close>open local _l=close<open local _m=true local _n=true if enableConsecutiveFilter then for _o=1,consecutiveCount do if not(close[_o]>open[_o])then _m=false end if not(close[_o]<open[_o])then _n=false end end end local _p=enableConsecutiveFilter and _m local _q=enableConsecutiveFilter and _n local _r=false if requireCandleColor then _r=_i and _k else _r=_i end if useTrendFilter then _r=_r and _f end _r=_r and not _p local _s=false if requireCandleColor then _s=_j and _l else _s=_j end if useTrendFilter then _s=_s and _g end _s=_s and not _q local _t=_r and not _s local _u=_s and not _r plot_shape(_t,string.char(67,97,108,108,32,65,114,114,111,119),shape_style.arrowup,shape_size.large,callColor,shape_location.belowbar)plot_shape(_u,string.char(80,117,116,32,65,114,114,111,119),
    shape_style.arrowdown,shape_size.large,putColor,shape_location.abovebar)end
