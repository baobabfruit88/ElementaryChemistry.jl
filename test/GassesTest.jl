using Test

include("../src/GassLaws.jl")
include("../src/Gasses/Chlorine.jl")
include("../src/conversions/TempratureConversion.jl")

@test 288 == absolute_temperature(15,"c")
@test 288 == absolute_temperature(59,"f")
@test 93.25 == charles_law(72,15,100,"c")
@test 93.25 == charles_law(72,59,212,"F")
@test 125 == boyles_law_solve_pressure(500,100,400)
@test 67.0 == round(boyles_law_solve_pressure(500,100,750))
@test 200 == boyles_law_solve_volume(100,2,1)
@test 50 == boyles_law_solve_volume(100,2,4)
@test 11.25503355704698 == gay_lussacs_law(3,25,845,"c")
@test 1.291 == round(grahams_law_velocity_ratio(20,12), digits = 3)
@test 0.775 == round(grahams_law_velocity_ratio(12,20), digits =3)
@test 8.166551644812515 == magnese_dioxide_to_chlorine(10)
@test 73.0503795721187 == hydrochloric_acid_needed(43.5)