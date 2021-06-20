```
The gas laws to calculate volume by 
temperature and/or pressure changes respectively : 
Charles, Boyles, Gay Lussacs and Avogadros laws
```

"""
When pressure is constant we can use charles law
Charles law states that volume expands or contracts      
Directly as temperature changes when pressure is constant 

Calculate the new volume of a gas using Charles law 

curentVolume = Curent c.c of gas
curenttemperature = The Curent temperature in either C or F
newtemperature = temperature the gas is being heated, or cooled to
temperatureUnit = (c)entigrade, (f)ahrenheit, or (a)bsolute
"""

function charles_law(curentVolume,curenttemperature,newtemperature,temperatureUnit)
    newVolume = 0;
    curenttemperature = round(absolute_temperature(curenttemperature,temperatureUnit))
    newtemperature = round(absolute_temperature(newtemperature,temperatureUnit))
    newVolume = curentVolume * (newtemperature/curenttemperature)
    return round(newVolume)
end


"""
When temperature remains contstant but pressure changes we can calculate new volume by using
Boyles law when solving for pressure. 
Which simlpy states : New volume = old volume * old pressure devided by new pressure 

curentPressure = The curent pressure in mm
curentVolume = The curent volume of the gas
desiredPressure = The pressure we want to be at
"""
function boyles_law_solve_pressure(curentPressure, curentVolume,desiredPressure)
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
function boyles_law_solve_volume(curentPressure,curentVolume,desiredVolume)
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
 newTemp = absolute_temperature(newTemp,temperatureUnit)
 temperature = absolute_temperature(temperature,temperatureUnit)
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

