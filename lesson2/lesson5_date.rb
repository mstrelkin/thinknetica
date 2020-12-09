print "Введите число: "
day = gets.chomp.to_i
print "Введите месяц: "
month = gets.chomp.to_i
print "Введите год: "
year = gets.chomp.to_i

month_day = [31,28,31,30,31,30,31,31,30,31,30,31]

if (year % 4 == 0 && year % 100 != 0)  || year % 400 == 0 
 	month_day[1] = 29
end

puts month_day.take(month-1).sum + day

