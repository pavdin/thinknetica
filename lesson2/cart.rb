cart = {}
sum = 0.0
loop do
  print 'Введите название товара. Напишете "stop" для завершения ввода: '
  title = gets.chomp
  break if title == 'stop'
  print 'Его цену: '
  price = gets.to_f
  print 'Количество: '
  quantity = gets.to_f
  cart[title] = { price: price, quantity: quantity }
end

cart.each do |name, hash|
  sum += hash[:price] * hash[:quantity]
  puts "#{name}: #{hash[:price] * hash[:quantity]} р."
end

puts cart
puts "Итого: #{sum} р."
