class Email

  attr_reader(:email_address, :e_type)

  define_method(:initialize) do |attributes|
    @email_address = attributes.fetch(:email_address)
    @e_type = attributes.fetch(:e_type)
  end

end
