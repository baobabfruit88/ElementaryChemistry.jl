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
tempratureUnit = C or F for Centigrade and Farenheit respectively.
"""

function charlesLaw(currentVolume,currentTemprature,newTemperature,tempratureUnit)
    newVolume = 0;
    currentTemprature = round(absoluteTemperature(currentTemprature,tempratureUnit))
    newTemperature = round(absoluteTemperature(newTemperature,tempratureUnit))
    newVolume = currentVolume * (newTemperature/currentTemprature)
    return round(newVolume)
end


"""
When temperature remains contstant but pressure changes we can make use of
Boyles law. Which simlpy states : New volume = old volume * old pressure devided by new pressure 

currentPressure = The current pressure
currentVolume = The current volume of the gass
desiredPressure = The pressure we want to be at
"""
function boylesLaw(currentPressure, currentVolume,desiredPressure)
    newVolume = 0;
    newVolume = (currentVolume * currentPressure) / desiredPressure
    return newVolume
end
"""
Converts farenheit or Centigrade to absolute temprature
temp = temprature to Convert
unit = F or C Farenheit or Centigrade respectively.
"""
function absoluteTemperature(temp,unit)
    if lowercase(unit) == "c"
        return round(temp + 273)
    elseif lowercase(unit) == "f"
        return round((temp + 459) / 1.8)
    end
end

