

class Rolodex
@@DB = []
attr_reader :client

	def initialize(client)
	@client = client
	add_to_rolo
	
	end

	def add_to_rolo


	@@DB.push(@client)
			puts "________db________________________"
	p @@DB
			puts "________db plus root________________________"

		puts @@DB[0][0]
	print "_________first client_______________________"	
			puts @@DB[1][0]
	print "_________second client_______________________"	
			puts @@DB[2][0]
	print "_________third client_______________________"	

	end

end