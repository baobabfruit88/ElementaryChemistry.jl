```
The gass laws to calculate volume by 
temprature and/or pressure changes respectively : 
Charles and Boyles laws
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
When temperature remains contstant but pressure changes we can make use of
Boyles law. Which simlpy states : New volume = old volume * old pressure devided by new pressure 

currentPressure = The current pressure in mm
currentVolume = The current volume of the gass
desiredPressure = The pressure we want to be at
"""
function boyles_law(currentPressure, currentVolume,desiredPressure)
    newVolume = 0;
    newVolume = (currentVolume * currentPressure) / desiredPressure
    return newVolume
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

