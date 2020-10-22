puts "Как тебя зовут?"
name = gets.chomp
name.capitalize!
puts "Укажи свой рост:"
height = gets.chomp
ideal_height = (height.to_f - 110) * 1.15

if ideal_height >= 0
	puts "#{name}, ваш идеальный вес #{ideal_height.round(2)} кг."
else
	puts "Ваш вес уже оптимальный."
end
123
