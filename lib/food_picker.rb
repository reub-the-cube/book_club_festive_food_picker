class FoodPicker
    def fullMenuOptions()
        menuOptions("healthy") + "\n" + 
        menuOptions("standard") + "\n" + 
        menuOptions("gourmet")
    end
    
    def menuOptions(gastronomy) 
        if (gastronomy == "healthy")
            "The #{gastronomy} menu:\n" +
            "Santa will have 3 sprouts served with a glass of water.\n" +
            "Rudolph will have 1 carrot served with a glass of milk.\n" +
            "Elves will have some fairy dust served with a glass of milk.\n"
        elsif (gastronomy == "gourmet")
            "The #{gastronomy} menu:\n" +
            "Santa will have 1 slice of fruit cake and cream served with a glass of mulled apple juice.\n" +
            "Rudolph will have 1 slice of carrot cake served with a glass of festive cosmopolitan.\n" +
            "Elves will have a plate of syrup spaghetti and extra syrup served with a glass of soda.\n"
        else
            "The #{gastronomy} menu:\n" +
            "Santa will have 1 mince pie served with a measure of brandy.\n" +
            "Rudolph will have a bag of reindeer food served with a cup of hot chocolate.\n" +
            "Elves will have a plate of syrup spaghetti served with a glass of soda.\n"
        end
    end
end