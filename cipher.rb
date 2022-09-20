def caesarCipher(string, shiftFactor)
  alphabet = 'abcdefghijklmnopqrstuvwxyz'.split('')
  cipherString = ''
  string.each_char do |char|
    lowerChar = char.downcase
    cipherChar = if alphabet.include?(lowerChar)
                   getCipher(lowerChar, shiftFactor, alphabet)
                 else
                   char
                 end

    cipherChar = cipherChar.upcase if char == char.upcase
    cipherString += cipherChar
  end
  cipherString
end

def getCipher(letter, shiftFactor, alphabet)
  index = alphabet.index(letter)
  newIndex = index + shiftFactor
  newIndex -= alphabet.length while newIndex > alphabet.length
  alphabet[newIndex]
end

puts 'Test 1: apple shifted 3 -> dssoh'
puts "#{caesarCipher('apple', 3)} == 'dssoh':#{caesarCipher('apple', 3) == 'dssoh'}"
puts 'Test 1: target sauce shifted 3 -> 	wdujhw vdxfh'
puts "#{caesarCipher('target sauce', 3)} == 'wdujhw vdxfh'': #{caesarCipher('target sauce', 3) == 'wdujhw vdxfh'}"
'Test 1: target sauce shifted 30 -> 	wdujhw vdxfh'
puts "#{caesarCipher('target sauce', 30)} == 'xevkix weygi': #{caesarCipher('target sauce', 30) == 'xevkix weygi'}"
'Test 1: RENO 911 shifted 15 -> GTCD 911'

puts ' '

puts "#{caesarCipher('RENO 911', 15)} == 'GTCD 911': #{caesarCipher('RENO 911', 15) == 'GTCD 911'}"
