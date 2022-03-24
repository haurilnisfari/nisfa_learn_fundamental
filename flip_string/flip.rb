#balikan string dan print 2 karakter terakhir
#a = 'apple' --> 'e l'
#b = 'bank bca' --> 'a c'

# def flip(string)
#   if string.length >= 2
#     last_letter = string[-1]
#     output = last_letter + ' ' + string[-2]
#   else
#     return "string too sort"
#   end
# end

def flip(string)
  return "string too sort" if string.length < 2
  string[-1] + ' ' + string[-2]
end

