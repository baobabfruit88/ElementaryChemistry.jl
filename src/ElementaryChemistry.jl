module ElementaryChemistry

include("Gasses.jl")
include("conversions/TempratureConversion.jl")
include("conversions/PressureConversion.jl")

export charles_law, boyles_law_solve_pressure, boyles_law_solve_volume, gay_lussacs_law, avogadros_law, absolute_temperature,
grahams_law_velocity_ratio

end
