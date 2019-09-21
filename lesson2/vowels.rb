VOWELS = %w[a e i o u y]

hash_vowels = {}

('a'..'z').each.with_index(1) do |letter, index|
  hash_vowels[letter] = index if VOWELS.include?(letter)
end
puts hash_vowels
