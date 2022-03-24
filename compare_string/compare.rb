
def compare(string1, string2)
  unless string1.empty? || string2.empty?
    array1 = string1.split
    array2 = string2.split
    array2.each do |element|
      if array1.include?(element)
        array1.delete(element)

      else 
        return false
      end
    end
    return true, array1

  else
    return 'string cannot be empty'
  end
end

x = compare('He is really really good', 'really really good')
print x