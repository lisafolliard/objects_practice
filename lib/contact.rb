class Contact
  @@all_contacts = []

  attr_reader(:last_name, :first_name, :job_title, :company)

  define_method(:initialize) do |attributes|
    @last_name = attributes.fetch(:last_name)
    @first_name = attributes.fetch(:first_name)
    @job_title = attributes.fetch(:job_title)
    @company = attributes.fetch(:company)
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

end
