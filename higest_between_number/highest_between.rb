def highest_between(input_array)
  if !input_array.empty?
    array_size = input_array.size
    hb = []

    for i in 1...array_size do
      current_value = input_array[i]
      previous = i - 1
      while previous >= 0 do
        if current_value > input_array[previous]
          hb << current_value - input_array[previous]
          previous -= 1
        else
          break
        end
      end

      i += 1
    end

    return hb.max
          
  else
    nil
  end
end

# [2, 3, 10, 2, 4, 8, 1]
#  0  1  2   3  4  5  6 

#  i = 0 ananya ga ada
#  i = 1 anaknya 1
#  i = 2 anaknya 2
#  i = 3 amaknya 3
#  i = 4 amaknya 4
#  i = 5 amaknya 5
#  i = 6 amaknya 6