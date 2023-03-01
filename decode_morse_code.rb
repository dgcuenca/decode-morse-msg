LETTERS = {
  A: '.-',
  B: '-...',
  C: '-.-.',
  D: '-..',
  E: '.',
  F: '..-.',
  G: '--.',
  H: '....',
  I: '..',
  J: '.---',
  K: '-.-',
  L: '.-..',
  M: '--',
  N: '-.',
  O: '---',
  P: '.--.',
  Q: '--.-',
  R: '.-.',
  S: '...',
  T: '-',
  U: '..-',
  V: '...-',
  W: '.--',
  X: '-..-',
  Y: '-.--',
  Z: '--..'
}.freeze

def decode_char(char)
  letter = ''
  LETTERS.each do |key, value|
    letter += key.to_s if char == value
  end
  letter
end

def decode_word(word)
  decoded_word = ''
  new_word = word.split

  new_word.each do |char|
    decoded_word += decode_char(char)
  end
  decoded_word
end

def decode_phrase(phrase)
  decoded_phrase = ''
  words = phrase.split('   ')

  words.each do |word|
    decoded_phrase += "#{decode_word(word)} "
  end
  decoded_phrase
end

puts decode_char('-..-') # Should return X
puts decode_word('-- -.--') # Should return MY
puts decode_phrase('-- -.--   -. .- -- .') # Should return MY NAME
puts decode_phrase('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
