array = [0, 1]

loop do
  fib = array[-1] + array[-2]
  break if fib > 100
  array << fib
end

puts array
