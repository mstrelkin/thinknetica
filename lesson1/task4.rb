puts "Введите число 1:"
a = gets.chomp.to_f
puts "Введите число 2:"
b = gets.chomp.to_f
puts "Введите число 3:"
c = gets.chomp.to_f

disc = (b**2 - 4 * a * c)

if disc > 0
	c = Math.sqrt(disc)
	puts "Дискриминант равен #{disc}"
	puts "Корень 1 равен #{ (-b + c) / (2 * a)}"
	puts "Корень 2 равен #{ (-b - c) / (2 * a)}"

elsif disc == 0
	puts "Дискриминант равен #{disc}"
	puts "Корень равен #{-b / (2 * a)}"


else
	puts "Дискриминант равен #{disc}, корней нет."

end
