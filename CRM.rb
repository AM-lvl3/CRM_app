require_relative "CRM_contact" 
require_relative "CRM_rolodex" 



class CRM
	attr_accessor :name, :exit


	def initialize(name)
		@name = name
	end


	def print_main_menu
	  puts "Welcome to #{name}!"
	  puts "\n"
	  puts "To make your selection you may enter a number or simply type the word displayed in brackets.\n"
	  puts "\n"
	  puts "[1] (Add) a new contact"
	  puts "[2] (Modify) an existing contact"
	  puts "[3] (Delete) a contact"
	  puts "[4] (Display all) the contacts"
	  puts "[5] (Display) an attribute" 
	  puts "[6] (Exit)"
	  puts "\n"
	  puts "Your selection: "
	end



	def call_option(user_selected)
	  @user_selected = user_selected.upcase
	  case user_selected
		when "1", "ADD"
		add_new_contact

		when "2", "MODIFY"
	  	modify_existing_contact 

	    when "3", "DELETE"

	    when "4", "DISPLAY ALL"

	    when "5", "DISPLAY"

	  	when "6", "EXIT"
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
		puts "Are you sure you want to exit? (y/n)"
		answer = (gets.chomp.to_s).upcase
		if answer == "Y" || answer == "YES"
			abort
		elsif answer == "N" || answer == "NO"
			@exit = false
		else
			puts "invalid command"
			exit
		end
	end



	def main_menu
	  print_main_menu
	  user_selected = (gets.chomp).upcase
	  call_option(user_selected)
	rescue
		puts "Error! Wrong input selected. Please try again."
	end
end

my_crm = CRM.new("My CRM")
@exit = false
while @exit == false
my_crm.main_menu
end


