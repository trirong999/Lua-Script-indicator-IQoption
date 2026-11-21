instrument { name = "Stochastic Clean Zone" }

input_group {
    "%K Line & Color Mode",
    k_period = input (10, "period", input.integer, 1),
    smooth = input (3, "smoothing", input.integer, 1),
    source = input (1, "source", input.string_selection, inputs.titles),

    color_mode = input (1, "color mode (1=Zone, 2=Slope)", input.integer, 1, 2, 1, false),

    k_ob_color = input { default = "#25E154", type = input.color },
    k_mid_color = input { default = "#56CEFF", type = input.color },
    k_os_color = input { default = "#FF6C58", type = input.color },

    k_up_color = input { default = "#25E154", type = input.color },
    k_down_color = input { default = "#FF6C58", type = input.color },

    k_width = input { default = 2, type = input.line_width }
}

input_group {
    "%D Line",
    show_d = input (true, "show %D line", input.boolean),
    d_period = input (3, "period", input.integer, 1),
    d_color = input { default = "#FF7700", type = input.color },
    d_width = input { default = 1, type = input.line_width }
}

input_group {
    "Zones & Midline",
    overbought = input (80, "overbought", input.double, 1, 100, 1, false),
    oversold = input (20, "oversold", input.double, 1, 100, 1, false),

    show_midline = input (true, "show midline (50)", input.boolean),
    midline_value = input (50, "midline level", input.double, 1, 99, 1, false),
    midline_color = input { default = rgba(255,255,255,0.22), type = input.color },
    midline_width = input { default = 1, type = input.line_width },

    overbought_color = input { default = rgba(37,225,84,0.40), type = input.color },
    oversold_color = input { default = rgba(255,108,88,0.40), type = input.color },
    bg_color = input { default = rgba(255,255,255,0.04), type = input.color },
    support_width = input { default = 1, type = input.line_width }
}

local sourceSeries = inputs [source]

k = sma (stochastic (sourceSeries, k_period), smooth) * 100
d = sma (k, d_period)

local active_k_color = k_mid_color

if color_mode == 1 then
    if k >= overbought then
        active_k_color = k_ob_color
    elseif k <= oversold then
        active_k_color = k_os_color
    else
        active_k_color = k_mid_color
    end
else
    if k >= k[1] then
        active_k_color = k_up_color
    else
        active_k_color = k_down_color
    end
end

fill_area (overbought, oversold, "", bg_color)

hline { value = overbought, color = overbought_color, width = support_width, style = style.dash_line }
hline { value = oversold, color = oversold_color, width = support_width, style = style.dash_line }

if show_midline then
    hline { value = midline_value, color = midline_color, width = midline_width, style = style.dash_line }
end

plot (k, "%K Line", active_k_color, k_width)

if show_d then
    plot (d, "%D Line", d_color, d_width)
end

hline { value = 90, color = rgba(255,255,255,0), show_label = false }
hline { value = 10, color = rgba(255,255,255,0), show_label = false }
