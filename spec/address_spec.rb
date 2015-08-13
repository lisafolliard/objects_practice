require('rspec')
require('address.rb')

describe(Address) do

  describe('#street_address') do
    it('returns the street_address and the type of address') do
      test_street_address = Address.new({:street_address => '208 Southwest 5th Avenue #205', :city => 'Portland', :state => "OR", :zip_code => 97204, :a_type => "Work"})
      expect(test_street_address.street_address()).to(eq('208 Southwest 5th Avenue #205'))
      expect(test_street_address.city()).to(eq('Portland'))
      expect(test_street_address.state()).to(eq('OR'))
      expect(test_street_address.zip_code()).to(eq(97204))
      expect(test_street_address.a_type()).to(eq('Work'))
    end
  end

end
