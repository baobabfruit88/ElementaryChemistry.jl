using Test

include("../src/gasses.jl")
@test 288 == absoluteTemperature(15,"c")
@test 288 == absoluteTemperature(59,"f")
@test 93 == charlesLaw(72,15,100,"c")
@test 93 == charlesLaw(72,59,212,"F")
@test 125 == boylesLaw(500,100,400)
@test 67.0 == round(boylesLaw(500,100,750))
@test 11.25503355704698 == gayLussacsLaw(3,25,845,"c")