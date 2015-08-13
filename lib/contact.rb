class Contact
  @@all_contacts = []

  attr_reader(:last_name, :first_name, :job_title, :company, :phone, :email, :address)

  define_method(:initialize) do |attributes|
    @last_name = attributes.fetch(:last_name)
    @first_name = attributes.fetch(:first_name)
    @job_title = attributes.fetch(:job_title)
    @company = attributes.fetch(:company)
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


end
