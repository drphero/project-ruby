def echo(string)
  string
end

def shout(string)
  string.upcase
end

def repeat(string, times = 2)
  string_array = []
  times.times do
    string_array.push string
  end
  string_array.join(" ")
end

def start_of_word(string, letter)
  string[0, letter]
end

def first_word(string)
  string.split[0]
end

def titleize(title)
  small_words = ["the", "and", "of", "at", "on", "in", "over"]
  title_array = title.downcase.split
  new_title = []
  index = 0
  title_array.each {|x|
    if (small_words.include?(x) && index != 0 )
      new_title << x
    else
      new_title << x.capitalize
    end
    index = index + 1}
  new_title.join(" ")
end