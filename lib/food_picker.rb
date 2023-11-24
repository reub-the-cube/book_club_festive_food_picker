class FoodPicker
    def fullMenuOptions()
        menuOptions("healthy") + "\n" + 
        menuOptions("standard") + "\n" + 
        menuOptions("gourmet")
    end
    
    def menuOptions(gastronomy) 
        "The #{gastronomy} menu:\n" +
        "Santa will have #{santaFood(gastronomy)} served with #{santaDrink(gastronomy)}.\n" +
        "Rudolph will have #{rudolphFood(gastronomy)} served with #{rudolphDrink(gastronomy)}.\n" +
        "Elves will have #{elfFood(gastronomy)} served with #{elfDrink(gastronomy)}.\n"
    end

    def santaFood(gastronomy)
        if (gastronomy == "healthy")
            "3 sprouts"
        elsif (gastronomy == "gourmet")
            "1 slice of fruit cake and cream"
        else
            "1 mince pie"
        end
    end

    def santaDrink(gastronomy)
        if (gastronomy == "healthy")
            "a glass of water"
        elsif (gastronomy == "gourmet")
            "a glass of mulled apple juice"
        else
            "a measure of brandy"
        end
    end

    def rudolphFood(gastronomy)
        if (gastronomy == "healthy")
            "1 carrot"
        elsif (gastronomy == "gourmet")
            "1 slice of carrot cake"
        else
            "a bag of reindeer food"
        end
    end

    def rudolphDrink(gastronomy)
        if (gastronomy == "healthy")
            "a glass of milk"
        elsif (gastronomy == "gourmet")
            "a glass of festive cosmopolitan"
        else
            "a cup of hot chocolate"
        end
    end

    def elfFood(gastronomy)
        if (gastronomy == "healthy")
            "some fairy dust"
        elsif (gastronomy == "gourmet")
            "a plate of syrup spaghetti and extra syrup"
        else
            "a plate of syrup spaghetti"
        end
    end

    def elfDrink(gastronomy)
        if (gastronomy == "healthy")
            "a glass of milk"
        else
            "a glass of soda"
        end
    end
end     