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
  item_total = hash[:price] * hash[:quantity]
  sum += item_total
  puts "#{name}: #{item_total} р."
end

puts cart
puts "Итого: #{sum} р."
