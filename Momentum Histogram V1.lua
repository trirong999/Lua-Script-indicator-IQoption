instrument {
    name = "Momentum Histogram V1",
    overlay = false, 
    icon = "indicators:other"
}


mom_period = input(14, "Momentum Period", input.integer, 1, 100, 1)


-- Calculate Momentum value (Price difference)
current_close = close
past_close    = close[mom_period]
momentum_val  = current_close - past_close

-- Determine Bar Color using standard if-else (Avoiding ternary '?' operator)
bar_color = "gray"
if momentum_val >= 0 then
    bar_color = "#2CAC40" -- Green for positive momentum
else
    bar_color = "#DB4931" -- Red for negative momentum
end



-- 1. Draw Zero Reference Line
hline(0, "Zero Line", "white", 1, style.dashed)

-- 2. Draw Histogram Bars using rect
rect {
    first  = 0,
    second = momentum_val,
    color  = bar_color,
    width  = 0.75
}

-- 3. Plot a thin line over the histogram for clarity
plot(momentum_val, "Momentum Line", "cyan", 1, style.lines)
