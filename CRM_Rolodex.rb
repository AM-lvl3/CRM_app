class Rolodex
	  attr_accessor :contacts, :id

	  @contacts = []
	  @id = 1000

	  def self.add_contact(contact)
	    contact.id = @id
	    @contacts << contact
	    @id += 1
	  end

def self.id
@contacts
end

	  def self.contacts
	    @contacts
	  end
end