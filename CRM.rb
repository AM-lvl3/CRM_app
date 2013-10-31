require_relative "CRM_contact"
require_relative "CRM_Rolodex"

#DONE - main menu
#DONE - add contact
#DONE - exit
#TO-DO - Modify
#TO-DO - Delete
#TO-DO - display all
#TO-DO - display

class Crm
	
attr_accessor :first_name, :last_name, :email, :notes, :client, :id

	def initialize
		"Welcome to My CRM"

	end


	def print_main_menu
	  puts "Welcome to Client Database (c)"
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

	def main_menu
		  print_main_menu
		  user_selected = (gets.chomp).upcase
		  call_option(user_selected)
		puts "ERROR! Wrong input selected. Returning to main menu."
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







