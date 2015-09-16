def translate(string)
  vowels = ['a', 'e', 'i', 'o', 'u']
  string.each_char do |i|
    break if vowels.include?(i)
    string.insert(-1, i)
    string.slice!(0)
  end
  string.insert(-1, 'ay')
end