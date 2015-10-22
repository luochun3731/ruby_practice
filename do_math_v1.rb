
def math_menu()
  puts "Let's do some math!"
  puts "-----------------"
  puts "1. Add"
  puts "2. Subtract"
  puts "3. Multiply"
  puts "4. Divide"
  puts "-----------------"

  puts "Please input your choice of math method: "
  choice = gets.chomp.to_i
  until [1, 2, 3, 4].include?(choice)
    puts "Invalid choice, it should be 1, 2, 3 or 4! Please try again: " 
    choice = gets.chomp.to_i
  end

  puts "Please input two numbers and seperate by space: "
  numbers = gets.chomp.split
  num1 = numbers[0].to_i
  num2 = numbers[1].to_i

  case choice
    when 1
      puts "your answer is: #{num1 + num2}"
  	when 2
  	  puts "your answer is: #{num1 - num2}"
  	when 3
  	  puts "your answer is: #{num1 * num2}"
  	when 4
  	  puts "your answer is: #{num1 / num2}"
  end
end
  

puts math_menu()