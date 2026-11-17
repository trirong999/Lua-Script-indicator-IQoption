instrument { name = "Parabolic SAR", overlay = true }

min_af = input (0.02,"Parabolic SAR min acceleration", input.double,  0.01, 1, 0.01)
step_af = input (0.02,"Parabolic SAR acceleration", input.double,  0.01, 1, 0.01)
max_af  = input (0.2,"Parabolic SAR max acceleration", input.double,  0.01, 1, 0.01)

input_group {
    "Parabolic SAR Line",
    color = input { default = "#4BFFB5", type = input.color },
    width = input { default = 1, type = input.line_width }
}

psar = sar(min_af, step_af, max_af)
plot(psar, "Parabolic SAR", color, width, 0, style.points)
