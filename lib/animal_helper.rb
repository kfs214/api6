module AnimalHelper
    BASE_DATE = Date.parse "1921-12-26"

    def get_animal_code input_birthday
        parsed_birthday = Date.parse input_birthday
        interval = parsed_birthday - BASE_DATE

        (interval % 60).zero? ? 60 : (interval % 60).to_i
    end
end