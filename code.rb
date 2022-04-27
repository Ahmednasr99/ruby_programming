foods = ['pizza', 'cereal', 'sandwiches', 'scones', 'eggs benny']
hash = {name: 'Michael', score: 100, languages: ['Ruby', 'JavaScript']}

for food in foods do
  food 
end

foods.each do |food|
   food
end

text = "The quick brown fox jumped over BURN THE BOATS"

text.each_char do |char|
   char
end

hash.each_key { |key, value|
  key
}

# alphabet = ['a', 'b', 'c', 'd', 'e', 'f', 'g']
# alphabet = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)
alphabet = 'a'..'z'

alphabet.each { |letter|
  letter
}

nineties = 1990..2000

nineties.step(5).each { |n|
  puts n
}