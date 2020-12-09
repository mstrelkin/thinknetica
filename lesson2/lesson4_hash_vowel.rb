hash = {}

array = ['а', 'е', 'и', 'о', 'у', 'ы', 'э', 'ю', 'я']

('а'..'я').each_with_index do |letter, index|
	array.each {|vowel| hash[vowel] = index + 1 if letter == vowel }
end

puts hash
