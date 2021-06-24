```
Chlorine, a gass first used by the germans during the war, as it is an extremely irritating and poisenous gas.
However it can also steralize germ-infected water rendering it safe for consumption.
Its made in a lab by heating Magnese dioxide and concentrated hydrochloric acid.
```

"""
Given that we use enough hydrochloric acid, 
how much chlorine in Grams (default)  or (L)iters at ntp do we get from x grams of Magnese dioxide.
"""
function magnese_dioxide_to_chlorine(magneseGrams,unit = nothing)
    grams_of_chloride =  (magneseGrams/86.94) * 71 
    liters_of_chloride = (grams_of_chloride/71) * 22.4
    if unit == nothing
        return grams_of_chloride
    else
        return liters_of_chloride
    end    
end

"""
How much hydrocloric acid do we need to convert X amount of Magnese dioxide into cholrine.
"""
function hydrochloric_acid_needed(magneseGrams)
    hydroc = (36.5 * 4) * magneseGrams / 86.94
    return hydroc
end