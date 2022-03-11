def search(input_array, search_value)
  binary_search(input_array, search_value)
end

def linear_search(input_array, search_value)
  i = 0
  while (i < input_array.size) do
    if (input_array[i] == search_value)
      return i
    end

    i = i + 1
  end
end

def binary_search(input_array, search_value)
  lower_bound = 0
  upper_bound = input_array.size - 1
  
  while (upper_bound >= lower_bound) do
    midpoint = (lower_bound + upper_bound)/2

    if input_array[midpoint] == search_value
      return midpoint
    elsif input_array[midpoint] > search_value
      upper_bound = midpoint - 1
    elsif input_array[midpoint] < search_value
      lower_bound = midpoint + 1
    end
  end
end