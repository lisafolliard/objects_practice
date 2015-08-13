class Contact
  #@@all_contacts = {}

  attr_reader(:last_name, :first_name, :job_title, :company)

  define_method(:initialize) do |attributes|
    @last_name = attributes.fetch(:last_name)
    @first_name = attributes.fetch(:first_name)
    @job_title = attributes.fetch(:job_title)
    @company = attributes.fetch(:company)
  end

end
