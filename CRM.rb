require_relative "CRM_contact" 
require_relative "CRM_Rolodex" 

#DONE - main menu
#DONE - add contact
#DONE - exit
#TO-DO - Modify
#TO-DO - Delete
#TO-DO - display all
#TO-DO - display

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
	  print "Your selection: "
	end



	def call_option(user_selected)
	  @user_selected = user_selected.upcase
	  case user_selected
		
		when "1", "ADD"
		add_new_contact

		when "2", "MODIFY"
	  	modify_existing_contact 

	    when "3", "DELETE"
	    delete_menu

	    when "4", "DISPLAY ALL"
	    diplay_all

	    when "5", "DISPLAY"
	    display_one

	  	when "6", "EXIT"
	  	exit

		else
			raise
		end
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

	def modify_existing_contact
		puts "Please enter the ID of the contact you would like to modify."
		print "ID: "
		@ID_modify = gets.chomp.to_i
		#TO-DO -> Display array or selected contact
		#TO-DO -> give selections as to what to modify
		#TO-DO -> save modifications to CRM_Rolodex
	end

	def display_all
		#puts Rolodex.contacts
		#TO-DO -> display table array
		#TO-DO -> give option to go back to main menu
	end

	def display_one
		#TO-DO -> display table array for one contact
		#TO-DO -> give option to go back to main menu
	end


def delete_menu
	puts "Please type the contact id you would like to delete"
	print "ID: "
	@delete_choice = gets.chomp.to_i
	delete
end
	
def delete
		if  (1..9999999).include?(@delete_choice)
		puts "!!!!!!!!!!!REMOVE ME!!!!!!!!!! -> ID selected"
		#TO-DO -> look up value - if value is an ID - confirm delete
		#TO-DO -> if value is not an ID, say re-enter

		else
		puts "That is not a valid id code. Returning to main menu."
		puts "\n"

		
		end
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
		puts "\n\n\n\n\n\n\n\n\n\n\n"
		puts "\n\n\n\n\n\n\n\n\n\n\n"
		puts "ERROR! Wrong input selected. Returning to main menu."
		puts "\n\n\n\n\n\n\n\n\n\n\n"
	end
end

my_crm = CRM.new("My CRM")
@exit = false

while @exit == false
my_crm.main_menu
end


