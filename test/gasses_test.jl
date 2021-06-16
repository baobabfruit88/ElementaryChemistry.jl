using Test

include("../src/gasses.jl")

@test 288 == absoluteTemperature(15,"c")
@test 288 == absoluteTemperature(59,"f")
@test 93 == charlesLaw(72,15,100,"c")
@test 93 == charlesLaw(72,59,212,"F")