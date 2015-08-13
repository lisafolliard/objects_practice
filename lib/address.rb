class Address

  attr_reader(:street_address, :city, :state, :zip_code, :a_type)

  define_method(:initialize) do |attributes|
    @street_address = attributes.fetch(:street_address)
    @city = attributes.fetch(:city)
    @state = attributes.fetch(:state)
    @zip_code = attributes.fetch(:zip_code)
    @a_type = attributes.fetch(:a_type)
  end
end
