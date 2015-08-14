class Contact
  @@all_contacts = []

  attr_reader(:last_name, :first_name, :phone, :email, :address)

  define_method(:initialize) do |attributes|
    @last_name = attributes.fetch(:last_name)
    @first_name = attributes.fetch(:first_name)
    @id = @@all_contacts.length().+(1)
    @phone = []
    @email = []
    @address = []
  end

  define_singleton_method(:all) do
    @@all_contacts
  end

  define_method(:save) do
    @@all_contacts.push(self)
  end

  define_singleton_method(:clear) do
    @@all_contacts = []
  end

  define_method(:add_phone) do |phone|
    @phone.push(phone)
  end

  define_method(:add_email) do |email|
    @email.push(email)
  end

  define_method(:add_address) do |address|
    @address.push(address)
  end

  define_singleton_method(:find) do |id|
    found_contact = nil
    @@all_contacts.each() do |contact|
      if contact.id().eql?(id)
        found_contact = contact
      end
    end
    found_contact
  end

end
