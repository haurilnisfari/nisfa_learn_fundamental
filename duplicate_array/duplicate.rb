def duplicate(array1, array2, array3)
  unless array1&&array2&&array3.empty?
    item = []
    all_item = []
    i = 0
    while (i < array1.size) do
      item << array1[i]
      item << array2[i]
      item << array3[i]

      i = i + 1
    end

    all_item = item.each_slice(3).to_a
    duplicate = all_item.length - all_item.uniq.length
    return duplicate
  else
  end

end

a = duplicate(['abang', 'ijo', 'putih', 'ijo', 'abang'], [2, 5, 3, 5, 2], [7, 8, 9, 8, 2])
print a