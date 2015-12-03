puts 'What is your first name?'
first_name = gets.chomp
puts 'What is your middle name?'
middle_name = gets.chomp
puts 'What is your last name?'
last_name = gets.chomp
puts 'Hello ' + first_name + ' ' + middle_name + ' ' + last_name + '!'


puts 'What is your favorite number?'
fav_number = gets.chomp
better_number = fav_number.to_i+1
puts 'I think ' + better_number.to_s + ' is better!'
