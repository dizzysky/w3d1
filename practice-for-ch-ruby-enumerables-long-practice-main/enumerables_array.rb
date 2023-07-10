class Array

    def my_each(&block)

        for i in 0...self.length
            block.call(self[i])
        end

        self
    end


    def my_select(&block)

        result = [] 

        for i in 0...self.length
            if block.call(self[i])
                result << self[i]
            end
        end

        result
    end


    def my_reject(&block)
        
        result = []

        for i in 0...self.length 
            if !block.call(self[i])
                result << self[i]
            end
        end

        result 
    end


    def my_any?(&block)

        for i in 0...self.length 
            if block.call(self[i])
                return true
            end
        end

        false
    end

    def my_all?(&block)

        result = []

        for i in 0...self.length 
            if block.call(self[i])
                result << self[i]
            end
        end

        if result.length == self.length
            return true 
        else 
            return false 
        end
    end


    

end