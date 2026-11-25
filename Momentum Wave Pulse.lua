instrument {
    name = "Momentum Wave Pulse",
    short_name = "MWP",
    overlay = false
}

-- Inputs
lookback = input(14, "Momentum Period", input.integer, 1, 100)
smoothLen = input(5, "Smoothing Factor", input.integer, 1, 20)

useTrueRange = input(
false,
"Use True Range instead of Volume",
input.boolean
)

isOscillating = input(
true,
"Show as Oscillator",
input.boolean
)

input_group {
    "Color Theme",
    bull_color = input {
        default = "#00C853",
        type = input.color
    },
    bear_color = input {
        default = "#FF1744",
        type = input.color
    },
    zero_color = input {
        default = "#808080",
        type = input.color
    }
}

-- Source
volumeSource = nz(volume)

if useTrueRange then
    volumeSource = tr
end

-- Momentum
priceChange = close - close[lookback]
rawPulse = priceChange * volumeSource

-- Smoothing
smoothedPulse = rma(rawPulse, smoothLen)

-- Display mode
if isOscillating then
    waveValue = smoothedPulse
else
    waveValue = abs(smoothedPulse)
end

-- Direction color
if smoothedPulse >= 0 then
    waveColor = bull_color
else
    waveColor = bear_color
end

-- Histogram
rect {
    first = 0,
    second = waveValue,
    color = waveColor,
    width = 0.7
}

-- Zero line
hline(0, "Zero", zero_color, 1)
