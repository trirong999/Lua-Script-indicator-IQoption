--[[
=====================================================
    FB: facebook.com/Indicator.Arrow
   :  haDelta Histogram C+
  website : https://indicatorarrow.vip
=====================================================
--]]

instrument {
    name = "haDelta Histogram C+",
    short_name = "haDelta",
    icon = "indicators:Heikin Ashi",
    overlay = false
}

input_group {
    "haDelta Settings",

    haPeriod = input(6, "HA Delta Period", input.integer, 1, 50, 1),
    signalPeriod = input(3, "Signal Period", input.integer, 1, 50, 1)
}

input_group {
    "Histogram Colors",

    upColor = input("#00D1FF", "Positive (Cyan)", input.color),
    downColor = input("#FF9900", "Negative (Orange)", input.color)
}

input_group {
    "Zero Line Settings",

    zeroColor = input("#555555", "Zero Line", input.color),
    zeroWidth = input(1, "Zero Width", input.integer, 1, 2, 1)
}

haClose = (open + high + low + close) / 4

local haOpen = make_series()

if not get_value(haOpen[1]) then
    haOpen:set((open + close) / 2)
else
    haOpen:set((haOpen[1] + haClose[1]) / 2)
end

rawDelta = haClose - haOpen
haDelta = sma(rawDelta, haPeriod)

hline(
    0,
    "Zero",
    zeroColor,
    zeroWidth
)

rect {
    first = 0,
    second = haDelta,
    color = iff(haDelta >= 0, upColor, downColor),
    width = 0.6
}
