```
The gas laws to calculate volume by 
temperature and/or pressure changes respectively : 
Charles, Boyles, Gay Lussacs and Avogadros laws
```

"""
Calculate the volume by using charles law, stating that gas volume
increases or decreases directly relative to change in temprature. 

curentVolume = Curent c.c of gas
curenttemperature = The Curent temperature in either C or F
newtemperature = temperature the gas is being heated, or cooled to
temperatureUnit = (c)entigrade, (f)ahrenheit, or (a)bsolute
"""
function charles_law(curentVolume, curenttemperature, newtemperature, temperatureUnit)
    newVolume = 0;
    curenttemperature = absolute_temperature(curenttemperature, temperatureUnit)
    newtemperature = absolute_temperature(newtemperature, temperatureUnit)
    newVolume = curentVolume * (newtemperature / curenttemperature)
    return newVolume
end

"""
When temperature remains contstant but pressure changes we can calculate new volume by using
Boyles law when solving for pressure. 
Which simlpy states : New volume = old volume * old pressure devided by new pressure 

curentPressure = The curent pressure in mm
curentVolume = The curent volume of the gas
desiredPressure = The pressure we want to be at
"""
function boyles_law_solve_pressure(curentPressure, curentVolume, desiredPressure)
    newVolume = 0;
    newVolume = (curentVolume * curentPressure) / desiredPressure
    return newVolume
end

"""
When temperature remains contstant but volume changes we can calculate new pressure by using
Boyles law when solving for volume. 
Which simlpy states : New pressure = old pressure * curent volume devided by new volume 

curentPressure = The curent pressure in mm
curentVolume = The curent volume of the gas
desiredVolume = The volume we want to have
"""
function boyles_law_solve_volume(curentPressure, curentVolume, desiredVolume)
    newPressure = 0
    newPressure = (curentPressure * curentVolume) / desiredVolume
    return newPressure
end

"""
The pressure of a gas of fixed mass and fixed volume is directly 
proprtional to the gas's absolute temperature.

If a gas's temperature increases, so does its pressure if the mass and volume are 
held constant.

pressure = Curent pressure in atm
temperature = Curent temperature of container
newTemp = temperature at which we want to know the pressure
temperatureUnit = (c)entigrade, (f)ahrenheit, or (a)bsolute
"""
function gay_lussacs_law(pressure, temperature, newTemp, temperatureUnit)
    newTemp = absolute_temperature(newTemp, temperatureUnit)
    temperature = absolute_temperature(temperature, temperatureUnit)
    newPressure = (pressure * newTemp) / temperature
    return newPressure
end

"""
Avrogados law under the assumption of ideal gases teaches us that
any gas, while having the same temperature, pressure and volume will have the 
same number of molecules. or : V1|N1 = V2|N2
"""
function avogadros_law()
    return null
end

"""
One of the use cases of grahams law 
is that we can calculate the ratio of diffusion rates of two gasses. 

the rate of effusion or diffusion of a gass in inversely proprtional to the square
root of the molar mass of the gas. 

using g/mol give the molar masses of both gasses. 
"""
function grahams_law_velocity_ratio(molar_mass_a,molar_mass_b)
        ratio = sqrt(molar_mass_a/molar_mass_b)
    return ratio
end
