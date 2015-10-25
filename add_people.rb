class Person 
	attr_accessor :name, :age, :gender
	def initialize (name, age, gender)
		@name = name
		@age = age
		@gender = gender 
	end
=begin
	def name
		@name
	end 

	def age 
		@age
	end

	def gender
		@gender
	end

	def name=(name)
		@name = name
	end 

	def age=(age) 
		@age = age
	end

	def gender=(gender)
		@gender = gender
	end
=end
end
 
all_the_person = []

completion = ''

puts "Please enter personnel data. Enter 'done' when finished."
while completion != 'done'
	print 'Name: '
	name = gets.chomp
	if name == 'done'
		completion = 'done'
	else	
		print 'Age: '
		age = gets.chomp

		print 'Gender: '
		gender = gets.chomp

		new_person = Person.new(name, age.to_i, gender) 
	  all_the_person.push(new_person)
	  puts 'New person saved.'
	end
end

puts 'Personnel entry complete and here are all the persons: '
puts  '| Name | Age | Gender |'
all_the_person.each do |p| 
	print '| ', p.name, ' | ', p.age, ' | ', p.gender, ' | '
	puts 
end
