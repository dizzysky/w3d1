require "byebug"

class Array
  #`my_flatten` should return all elements of the array into a new, one-dimensional array.
  # Hint: use recursion!
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
end

p [1, 2, 3, [4, [5, 6]], [[[7]], 8]].my_flatten
