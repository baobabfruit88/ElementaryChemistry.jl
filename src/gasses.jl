```
The gas laws to calculate volume by
temperature and/or pressure changes respectively :
Charles and Boyles laws
```

"""
When pressure is constant we can use Charles law
Charles law states that volume expands or contracts
Directly as temperature changes when pressure is constant

Calculate the new volume of a gas using Charles law

curentVolume = Current c.c of gas
currentTemperature = The Current temperature in either C or F
newTemperature = Temperature the gas is being heated, or cooled to
temperatureUnit = C or F for Centigrade and Fahrenheit respectively.
"""

function charlesLaw(currentVolume,currentTemprature,newTemperature,tempratureUnit)
    newVolume = 0;
    currentTemprature = round(absoluteTemperature(currentTemprature,tempratureUnit))
    newTemperature = round(absoluteTemperature(newTemperature,tempratureUnit))
    newVolume = currentVolume * (newTemperature/currentTemprature)
    return round(newVolume)
end

"""
Converts Fahrenheit or Centigrade to absolute temperature
temp = temperature to Convert
unit = F or C Fahrenheit or Centigrade respectively.
"""
function absoluteTemperature(temp,unit)
    if lowercase(unit) == "c"
        return round(temp + 273)
    elseif lowercase(unit) == "f"
        return round((temp + 459) / 1.8)
    end
end
