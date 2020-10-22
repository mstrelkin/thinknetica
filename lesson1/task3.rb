puts "Введите 1ую сторону треугольника:"
a = gets.chomp.to_i
puts "Введите 2ую сторону треугильника:"
b = gets.chomp.to_i
puts "Введите 3ую сторону треугильника:"
c = gets.chomp.to_i

if a > b && a > c
	hypotenuse = a
	side1 = b
	side2 = c
elsif b > a && b > c
	hypotenuse = b
	side1 = a
	side2 = c
else
	hypotenuse = c
	side1 = a
	side2 = b
end

if hypotenuse**2 == (side1**2 + side2**2)
	puts "Треугольник прямоугольный."	
end

if side1 == side2 && side1 == hypotenuse
	puts "Треугольник равнобедренный и равносторонний."
elsif side1 == side2 || side1 == hypotenuse || hypotenuse == side2
	puts "Треугольник равнобедренный."
end
