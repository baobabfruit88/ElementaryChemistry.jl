    """
    Chlorine, a gas first used by the Germans during the war, as it is an extremely irritating and poisonous gas.
    However, it can also sterilize germ-infected water, rendering it safe for consumption.
    It's made in a lab by heating Manganese dioxide and concentrated hydrochloric acid.
    """

    """
    Given that we use enough hydrochloric acid, 
    how much chlorine in Grams (default)  or (L)iters at NTP do we get from x grams of Manganese dioxide.
    """
    function magnese_dioxide_to_chlorine(magneseGrams,unit = "grams")  
        if lowercase(unit) == "grams"
            return (magneseGrams/86.94) * 71 
        elseif lowercase(unit) == "litre" || unit == "liter"
            return (magneseGrams/86.94) * 22.4
        end    
    end

    """
    How much hydrochloric acid do we need to convert X amount of Manganese dioxide into chlorine.
    """
    function hydrochloric_acid_needed(magneseGrams)
        hydroc = (36.5 * 4) * magneseGrams / 86.94
        return hydroc
    end