hash = {}

array = ['а', 'е', 'и', 'о', 'у', 'ы', 'э', 'ю', 'я']

('а'..'я').each.with_index(1) do |letter, index|
	array.each { |vowel| hash[vowel] = index if letter == vowel }
end

puts hash
