```
The gass laws to calculate volume by 
temprature and/or pressure changes respectively : 
Charles, Boyles, Gay Lussacs and Avogadros laws
```

"""
When pressure is constant we can use charles law
Charles law states that volume expands or contracts 
Directly as temprature changes when pressure is constant 

Calculate the new volume of a gas using Charles law 

curentvolume = Currrent c.c of gas
currentTemperature = The Current temprature in either C or F
newTemperature = Temprature the gas is being heated, or cooled to
tempratureUnit = (c)entigrade, (f)arenheit, or (a)bsolute
"""

function charles_law(currentVolume,currentTemprature,newTemperature,tempratureUnit)
    newVolume = 0;
    currentTemprature = round(absoluteTemperature(currentTemprature,tempratureUnit))
    newTemperature = round(absoluteTemperature(newTemperature,tempratureUnit))
    newVolume = currentVolume * (newTemperature/currentTemprature)
    return round(newVolume)
end


"""
When temperature remains contstant but pressure changes we can calculate new volume by using
Boyles law when solving for pressure. 
Which simlpy states : New volume = old volume * old pressure devided by new pressure 

currentPressure = The current pressure in mm
currentVolume = The current volume of the gass
desiredPressure = The pressure we want to be at
"""
function boyles_law_solve_pressure(currentPressure, currentVolume,desiredPressure)
    newVolume = 0;
    newVolume = (currentVolume * currentPressure) / desiredPressure
    return newVolume
end

"""
When temperature remains contstant but volume changes we can calculate new pressure by using
Boyles law when solving for volume. 
Which simlpy states : New pressure = old pressure * current volume devided by new volume 

currentPressure = The current pressure in mm
currentVolume = The current volume of the gass
desiredVolume = The volume we want to have
"""
function boyles_law_solve_volume(currentPressure,currentVolume,desiredVolume)
    newPressure = 0
    newPressure = (currentPressure * currentVolume) / desiredVolume
    return newPressure
end

"""
The pressure of a gass of fixed mass and fixed volume is directly 
proprtional to the gas's absolute temprature.

If a gas's temprature increases, so does its pressure if the mass and volume are 
held constant.

pressure = Current pressure in atm
temperature = Current temperature of container
newTemp = Temperature at which we want to know the pressure
tempratureUnit = (c)entigrade, (f)arenheit, or (a)bsolute
"""
function gay_lussacs_law(pressure, temperature, newTemp, tempratureUnit)
 newTemp = absoluteTemperature(newTemp,tempratureUnit)
 temperature = absoluteTemperature(temperature,tempratureUnit)
 newPressure = (pressure * newTemp) / temperature
 return newPressure
end

"""
Avrogados law under the assumption of ideal gasses teaches us that
any gas, while having the same temprature, pressure and volume will have the 
same number of molecules. or : V1|N1 = V2|N2
"""
function avogadros_law()
    return null
end

"""
Converts farenheit or Centigrade to absolute temprature
temprature = temprature to Convert
tempratureUnit = (c)entigrade, (f)arenheit, or (a)bsolute = (c)entigrade, (f)arenheit, or (a)bsolute
"""
function absolute_temperature(temprature,tempratureUnit)
    if lowercase(tempratureUnit) == "c"
        return round(temprature + 273)
    elseif lowercase(tempratureUnit) == "f"
        return round((temprature + 459) / 1.8)
    elseif lowercase(tempratureUnit) == "a"
        return temprature    
    end
end

