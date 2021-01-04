module Animal
    BASE_DATE = Date.parse "1921-12-26"

    def getAnimalCode inputBirthday
        parsedBirthday = Date.parse inputBirthday
        interval = inputBirthday - BASE_DATE

        (interval % 60).zero? ? 60 : interval % 60
    end
end