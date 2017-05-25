def translate(text)
  array_of_words = text.split(' ')
  array_of_words.map! do |word|
    word_translate(word)
  end
  array_of_words.join(' ')
end

def word_translate(word)
  loc = location_of_vowel(word)
  if loc > 0
    #putting consonants at the end
    word[loc..-1]+word[0...loc]+"ay"
  else
    word+"ay"
  end
end

def location_of_vowel(word)
  vowels = ['a', 'e', 'i', 'o', 'u']
  i = 0
  while !vowels.include?(word[i])
    #counts qu as a consonant
    if word[i..(i+1)] == 'qu'
      i += 2
    else
      i += 1
    end
  end
  i
end
