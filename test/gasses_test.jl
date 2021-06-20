using Test

include("../src/gasses.jl")
@test 288 == absolute_temperature(15,"c")
@test 288 == absolute_temperature(59,"f")
@test 93 == charles_law(72,15,100,"c")
@test 93 == charles_law(72,59,212,"F")
@test 125 == boyles_law_solve_pressure(500,100,400)
@test 67.0 == round(boyles_law_solve_pressure(500,100,750))
@test 200 == boyles_law_solve_volume(100,2,1)
@test 50 == boyles_law_solve_volume(100,2,4)
@test 11.25503355704698 == gay_lussacs_law(3,25,845,"c")