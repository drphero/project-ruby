def translate(strings)
  vowels = ['a', 'e', 'i', 'o', 'u']
  punctuation = [',', '.', '!', '?']
  array = strings.split
  array.map! do |string|
    capital = false
    punc = ''
    capital = true if string.capitalize == string
    if punctuation.include?(string[-1])
      punc = string[-1] 
      string.slice!(-1)
    end
    string.each_char do |i|
      break if vowels.include?(i)
      if i == "q"
        string.insert(-1, i)
        string.insert(-1, 'u')
        string.slice!(0)
        string.slice!(0)
      else
        string.insert(-1, i)
        string.slice!(0)
      end
    end
    string.capitalize! if capital
    string.insert(-1, 'ay')
    string.insert(-1, punc)
  end
  array.join(" ")
end