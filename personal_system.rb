# encoding: utf-8

class Employee
  attr_accessor :name, :role, :location
  def initialize(name, role, location)
  	@name = name
  	@role = role
  	@location = location
  end
end

@employees = []

def menu
	puts 'Please choose a action: '
	puts '------------------------'
	puts '1. Add an employee.'
	puts '2. Edit or view an existing employee.'
	puts '3. End this session.'

	choice = gets.chomp.to_i

	case choice
	  when 1
		  create_employee
		when 2
			select_record
		when 3
			end_session
		else
			puts "It's not a valid option."
			menu
	end
end
		
def end_session
	puts 'Goodbye!'
end

def create_employee
	puts 'Please enter following info: '
	puts 'Name: '
	name = gets.chomp
	puts 'Role: '
	role = gets.chomp
	puts 'Location: '
	location = gets.chomp
	new_employee = Employee.new(name, role, location)
	@employees.push(new_employee)
	puts 'New employee added sucessfully.'
	return_to_menu
end

def select_record
	puts 'Please enter the name you want to select: '
	name = gets.chomp
	puts 'role: '
	role = gets.chomp
	puts 'location: '
	location = gets.chomp
  
  current_record = ''
  record_found = false

  @employees.each do |r| 
    if name == r.name && role == r.role && location == r.location
      current_record = r 
      record_found = true	
    end
  end

	unless record_found
		puts 'No record found.'
		puts 'Would you like to try again? [y/n]'
		answer = gets.chomp.downcase
		(answer == 'y') ? select_record : menu
		record_menu(current_record)
	end
end

def record_menu(record)
	puts "Welcome back, #{record.name}!"
	puts 'Please select action from following: '
	puts '-------------------------------------'
	puts '1. View record.'
	puts '2. Change role.'
	puts '3. Change location.'
	puts '4. Return to main menu.'

	answer = gets.chomp.to_i

	case answer
	  when 1
	  	view_employee(record)
	  when 2
	  	change_role(record)
	  when 3 
	  	change_location(record)
	  when 4
	  	menu
	  else
	  	puts "It's not a valid option."
	  	record_menu(record)
	end
end

def view_employee(record)
	puts 'Name:' + record.name
	puts 'Role:' + record.role
	puts 'Location:' + record.location
	return_to_record_menu(record)
end

def change_role(record)
	puts "What's the new role?"
	new_role = gets.chomp
	#old_role = self.role
	record.role=(new_role)
	puts "The role has been changed to #{record.role}"
	return_to_record_menu(record)
end

def change_location(record)
	puts 'What is the new location?'
	new_location = gets.chomp
	record.location=(new_location)
	puts "The location has been changed to #{record.location}"
	return_to_record_menu(record)
end

def return_to_record_menu(record)
	puts 'Return to record menu? [y/n]'
	answer = gets.chomp
	if answer == 'y'
		record_menu(record)
	else
		end_session
	end
end

def return_to_menu
	puts 'Would you like to return to menu? [y/n]'
	answer = gets.chomp
	if answer == 'y'
		menu
	else
		end_session
	end
end

menu