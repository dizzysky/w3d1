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

  def my_zip(*args)
    result = Array.new(self.length) { Array.new(args.length + 1, nil) }
    self.length.times do |i|
      sub_array = [self[i]]
      args.each do |array|
        sub_array << array[i]
      end
      result[i] = sub_array
    end
    result
  end

  def my_rotate(num = 1)
    result = []
    total_rotations = num % self.length

    select!.drop(total_rotations) + self.take(total_rotations)
  end

  def my_join(separator = "")
    result = ""
    result = self.inject() do |accum, el|
      accum += separator + el
    end
  end

  def my_reverse
    result = []
    self.each do |el|
      result.prepend(el)
    end
    result
  end
end
