require_relative "CRM_contact"
require_relative "CRM_Rolodex"

#TO-DO - function - main menu
#TO-DO - function - add contact - DONE
#TO-DO - function - exit
#TO-DO - function - Modify
#TO-DO - function - Delete
#TO-DO - function - display all
#TO-DO - function - display

#TO-DO - main menu
#TO-DO - add contact
#TO-DO - exit
#TO-DO - Modify
#TO-DO - Delete
#TO-DO - display all
#TO-DO - display

class Crm
	
attr_accessor :first_name, :last_name, :email, :notes, :client, :id, :modify_id, :exit

	def initialize
		"Welcome to My CRM"
		
	end


	def print_main_menu
	  puts "Welcome to Client Database (c)"
	  puts "\n"
	  puts "To make your selection please enter a number.\n"
	  puts "\n"
	  puts "[1] Add a new contact"
	  puts "[2] Modify an existing contact"
	  puts "[3] Delete a contact"
	  puts "[4] Display all the contacts"
	  puts "[5] Display one contact" 
	  puts "[6] Exit"
	  puts "\n"
	  print "Your selection: "
	end



	def call_option(user_selected)
	  @user_selected = user_selected.upcase
	  case user_selected
		
		when "1", "ADD"
		add_new_contact

		when "2", "MODIFY"
	
		Rolodex.modify
	  	
	  	when "3", "DELETE"
	    Rolodex.delete

	    when "4", "DISPLAY ALL"
	    Rolodex.display_all

	    when "5", "DISPLAY"
	    Rolodex.display_one

	  	when "6", "EXIT"
	  	exit

	  else
	  	main_menu
		end
	end

	def add_new_contact

	  print "Enter First Name: "
	  @first_name = gets.chomp
	  print "Enter Last Name: "
	  @last_name = gets.chomp
	  print "Enter Email Address: "
	  @email = gets.chomp
	  print "Enter a Note: "
	  @notes = gets.chomp
	  new_contact = Contact.new(first_name, last_name, email, notes)

	end

	def exit
		abort
	end

	def main_menu
		  print_main_menu
		  user_selected = (gets.chomp).upcase
		  call_option(user_selected)
		main_menu
	end

end

database = Crm.new
database.main_menu

# rescue toyota = Car.new
# toyota.top_speed=("130 km/h")

# mazda = Car.new
# mazda.top_speed=("130 km/h")

# parking = Warehouse.new
# parking.add_car(mazda)
# p parking.garage[0]

# #to modify the top speed -> think CRM
# #mazda.top_speed = #{variable}
#___________________
#Passing from one class method to another with data
# class Rolodex
#   def modify
#     puts Modifying contact
#   end
# end

# class CRM
#   def selected_modify(start_rolodex)
#      start_rolodex.modify
#   end
# end

# start_rolodex = Rolodex.new
# CRM = CRM.new



