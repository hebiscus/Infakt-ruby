class ValidatePassword
    def initialize(string)
        @string = string
    end

    def perform
        capital_regex = /[A-Z]/
        lowercase_regex = /[a-z]/
        number_regex = /[0-9]/
        symbol_regex = /[!@#\$%&*\+=:;?<>]/
        repeated_regex = /(.)\1\1/
        
        # checking for every condition
        if (@string.length > 6) && (@string.length < 26) &&
            @string.match(capital_regex) &&
            @string.match(lowercase_regex) &&
            @string.match(number_regex) &&
            @string.match(symbol_regex) &&
            !@string.match(repeated_regex)
            return true
        else 
            return false
        end
    end 
end
