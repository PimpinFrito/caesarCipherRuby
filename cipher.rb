def caesarCipher(string, shiftFactor)
  alphabet = 'abcdefghijklmnopqrstuvwxyz'.split('')
  stringList = string.split('')
  cipherList = stringList.map do |letter|
    p letter
    cipher_letter = getCipher(letter, shiftFactor) if alphabet.include?(letter)
    cipher_letter
  end
  cipherList.f
end

def getCipher(letter, shiftFactor)
  alphabet = 'abcdefghijklmnopqrstuvwxyz'.split('')
  index = alphabet.index(letter)
  # puts "index = #{index}"
  newIndex = index + shiftFactor
  # puts "New Index = #{newIndex}"
  newIndex -= alphabet.length while newIndex > alphabet.length
  alphabet[newIndex]
end

caesarCipher('ap le', 3)

puts 'Test 1: apple shifted 3 -> dssoh'
puts "#{caesarCipher('apple', 3)} == 'dssoh':#{caesarCipher('apple', 3) == 'dssoh'}"
puts 'Test 1: target sauce shifted 3 -> 	wdujhw vdxfh'
puts "#{caesarCipher('target sauce', 3)} == 'wdujhw vdxfh'': #{caesarCipher('target sauce', 3) == 'wdujhw vdxfh'}"
