require_relative "CRM_contact" 
require_relative "CRM_rolodex" 



class CRM
	attr_accessor :name, :exit


	def initialize(name)
		@name = name
	end


	def print_main_menu
	  puts "Welcome to #{name}"
	  puts "[1] Add a new contact"
	  puts "[2] Modify an existing contact"
	  puts "[3] Delete a contact"
	  puts "[4] Display all the contacts"
	  puts "[5] Display an attribute" 
	  puts "[6] Exit"
	  puts "Enter a number: "
	end



	def call_option(user_selected)
	  @user_selected = user_selected
	  case user_selected
		when 1
		add_new_contact

		when 2
	  	modify_existing_contact 

	  	when 6
	  	exit
		else
			raise
		end
	  # Finish off and do the rest for 3 through 6
	  # To be clear, the methods add_new_contact and modify_existing_contact
	  # haven't been defined yet
	end

	def add_new_contact
	  print "Enter First Name: "
	  first_name = gets.chomp
	  print "Enter Last Name: "
	  last_name = gets.chomp
	  print "Enter Email Address: "
	  email = gets.chomp
	  print "Enter a Note: "
	  note = gets.chomp
	  contact = Contact.new(first_name, last_name, email, note)
	  Rolodex.add_contact(contact)
	end


	def exit
		puts "Are you sure you want to exit?"
		answer = gets.chomp
		if answer == "y"
			@exit = "true"
		else
			@exit = "false"
		end
	end



	def main_menu
	  print_main_menu
	  user_selected = gets.to_i
	  call_option(user_selected)
	rescue
		puts "Error! Wrong input selected. Please try again."
	end
end

my_crm = CRM.new("My CRM")

while @exit != "true"
my_crm.main_menu
end
puts my_crm.name
puts my_crm.name = "Your mom's CRM!"
