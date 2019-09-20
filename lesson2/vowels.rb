vowels = ["a", "e", "i", "o", "u"]

hash_vowels = {}

('a'..'z').each.with_index(1) do |letter, index|
  hash_vowels[letter] = index if vowels.include?(letter)
end
puts hash_vowels
