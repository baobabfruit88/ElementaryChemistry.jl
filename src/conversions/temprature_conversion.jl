"""
Converts Fahreneit or Centigrade to absolute temperature
temperature = temperature to Convert
temperatureUnit = (c)entigrade, (f)ahrenheit, or (a)bsolute = (c)entigrade, (f)ahrenheit, or (a)bsolute
"""
function absolute_temperature(temperature,temperatureUnit)
    if lowercase(temperatureUnit) == "c"
        return round(temperature + 273)
    elseif lowercase(temperatureUnit) == "f"
        return round((temperature + 459) / 1.8)
    elseif lowercase(temperatureUnit) == "a"
        return temperature    
    end
end
