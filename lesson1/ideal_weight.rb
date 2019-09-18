puts "Введите Ваше имя:"
name = gets.chomp
puts "Введите Ваш рост в см:"
heigth = gets.to_i

ideal_weight = heigth - 110

if ideal_weight > 0
  puts "#{name}, Ваш идеальный вес равен #{ideal_weight} кг"
else
  puts "#{name}, Ваш вес уже оптимальный"
end
