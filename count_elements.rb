class CountElements
    def initialize(array)
        @array = array
    end

    def perform
        result_hash = Hash.new(0)
        # loop over each element in the array; if result_hash has the element as a key increment += 1; otherwise element never occured before -> add it as a key with value 1
        @array.each do |element|
            if result_hash.key?(element)
                result_hash[element] += 1
            else 
                result_hash[element] = 1
            end
        end

        return result_hash
    end

end
