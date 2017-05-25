def echo(text)
  text
end

def shout(text)
  text.upcase
end

def repeat(text, num = 2)
  ans = text
  until num == 1
    ans += " " + text
    num -= 1
  end
  ans
end

def start_of_word(text,num = 1)
  text[0...num]
end

def first_word(text)
  array_of_words = text.split(" ")
  array_of_words[0]
end

def titleize(text)
  array_of_words = text.split(" ")
  littlewords = ['and', 'the', 'over']
  array_of_words.map! do |word|
    if littlewords.include?(word)
      word
    else
      word.capitalize
    end
  end
  array_of_words[0] = array_of_words[0].capitalize
  array_of_words.join(' ')
end
