hash = {}
sum = 0

loop do 
	print "Введите товар: "
	item = gets.chomp
 	break if item == "стоп"
	print "Введите цену за единицу товара: "
	cash = gets.chomp.to_f
	print "Введите кол-во товара: "
	count = gets.chomp.to_f
	hash[item] = {cash: cash, count: count}
end

puts hash
puts "Итоговая стоимость каждого товара:"

hash.each do |name, data|
	puts "#{name} = #{data.values[0] * data.values[1]}"
	sum += data.values[0] * data.values[1]
end

puts "Общая стоимость всех товаров = #{sum}"