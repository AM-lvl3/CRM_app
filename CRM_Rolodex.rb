

class Rolodex
@@DB = []
attr_reader :client
attr_accessor :DB



	def self.add_to_rolo(client)
		@client = client

		@@DB.push(@client)
		p @@DB

	
	end

	def self.modify
		puts @@DB
		puts "Please enter the id of the user you would like to modify."
		print "ID: "
		

		@modify_id = gets.chomp
		@modify_id = @modify_id.to_i

		ind = @@DB.index(@@DB.detect{|aa| aa.include?(@modify_id)})
		
		
		array = @@DB.transpose
		array.map {|row| row.delete_at(ind)}
		@@DB = array.transpose


				puts "Please enter the new information for id #{@modify_id}."
				
					  print "First Name: "
					  @first_name = gets.chomp
					  print "Last Name: "
					  @last_name = gets.chomp
					  print "Email Address: "
					  @email = gets.chomp
					  print "Note: "
					  @notes = gets.chomp


					  @client = [@modify_id, @first_name, @last_name, @email, @notes]
					  @@DB.push(@client)
						p @@DB



		end

	def self.display_one

		puts "Please enter the id of the user you would like to display."
		print "ID: "

		@display_id = gets.chomp
		@display_id = @display_id.to_i
		ind = @@DB.index(@@DB.detect{|aa| aa.include?(@display_id)})
		ind = ind.to_i
		puts @@DB[ind]
		puts "\n\n"
		
	end

	def self.display_all

		puts @@DB
		puts "\n\n"
		
	end

	def self.delete
		puts @@DB
		puts "Please enter the id of the user you would like to delete."
		print "ID: "
		

		@modify_id = gets.chomp
		@modify_id = @modify_id.to_i
		ind = @@DB.index(@@DB.detect{|aa| aa.include?(@modify_id)})
		array = @@DB.transpose
		array.map {|row| row.delete_at(ind)}
		@@DB = array.transpose

	end

end