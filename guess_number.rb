puts 'Please enter a number between 1 and 100'
num = rand(101) # 0 <= number <= 100

num_enter = gets.chomp.to_i

if num_enter == num
  puts 'Wow, you\'re psychic!'
elsif (num_enter > num - 5) && (num_enter < num + 5)
  puts "Oh, so close! The number is #{num}"
else
	puts "Nope, I was thinking of #{num}."
end