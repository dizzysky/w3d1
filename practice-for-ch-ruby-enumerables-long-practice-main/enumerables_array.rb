
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

    def my_flatten
        result = []
        self.each do |el|
          if el.is_a?(Array)
            result += el.my_flatten
          else
            result << el
            result
          end
        end
        result
      end



      def factors(num) 

        result = [] 

        for i in 1...num
            if num % i == 0
                result << i
            end
        end

        result

      end


      def bubble_sort!(&prc)

        prc ||= Proc.new {|a,b| a <=> b}


        sorted = false 
        until sorted

            sorted = true

            (0...self.length-1).each do |i|
                if prc.call(self[i], self[i+1]) == 1
                    self[i], self[i+1] = self[i+1], self[i]
                    sorted = false
                end
            end
        end
        self
    end


    def bubble_sort(&prc)
        self.dup.bubble_sort!(&prc)
    end

    def substrings(str)
        result = []
        (0...str.length).each do |i|
          (i...str.length).each do |j|
            result << str[i..j]
          end
        end
        result.uniq
    end
      


    

end
