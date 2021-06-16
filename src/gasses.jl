```
The gass laws to calculate volume by 
temprature and/or pressure changes respectively : 
Charles and Boyles laws
```

#When pressure is constant we can use charles law
#Charles law states that volume expands or contracts 
#Directly as absolute temprature changes when pressure is constant 

function charlesLaw(currentVolume,currentTemprature,newTemperature,tempratureUnit)
    newVolume = 0;
    currentTemprature = round(absoluteTemperature(currentTemprature,tempratureUnit))
    newTemperature = round(absoluteTemperature(newTemperature,tempratureUnit))
    newVolume = currentVolume * (newTemperature/currentTemprature)
    return round(newVolume)
end

#We have to convert to absolute temprature first
function absoluteTemperature(temp,unit)
    if lowercase(unit) == "c"
        return round(temp + 273)
    elseif lowercase(unit) == "f"
        return round((temp + 459) / 1.8)
    end
end

