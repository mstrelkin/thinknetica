mas = []

puts "Введите 1ую сторону треугольника:"
mas << gets.chomp.to_f
puts "Введите 2ую сторону треугильника:"
mas << gets.chomp.to_f
puts "Введите 3ую сторону треугильника:"
mas << gets.chomp.to_f

hypotenuse = mas.max
side1 = mas.min
mas.sort
side2 = mas[1]

if hypotenuse**2 == (side1**2 + side2**2)
	puts "Треугольник прямоугольный."	
end

if side1 == side2 && side1 == hypotenuse
	puts "Треугольник равнобедренный и равносторонний."
elsif side1 == side2 || side1 == hypotenuse || hypotenuse == side2
	puts "Треугольник равнобедренный."
end