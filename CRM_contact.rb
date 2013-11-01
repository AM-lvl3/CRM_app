

class Contact
@@id = 1000


attr_accessor :client

	  def initialize(first_name, last_name, email, notes)
			
 			
		   @first_name = first_name
		   @last_name = last_name
		   @email = email
		   @notes = notes
			@client = []
			id_tracker

	  end


		def id_tracker

	
		@client = [@@id, @first_name, @last_name, @email, @notes]
		@@id = @@id + 1
		
		Rolodex.add_to_rolo(client)

		end



end
