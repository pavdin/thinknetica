months = [0, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

puts "Введите день, месяц и год (через \"Enter\"): "

day = gets.to_i
month = gets.to_i
year = gets.to_i

months[1] = 29 if year % 400 == 0 || year % 4 == 0 && year % 100 != 0

total_days_months = months.take(month).sum

puts "Этот день #{total_days_months + day}-й по счету в году"
