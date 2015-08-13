require('rspec')
require('phone.rb')

describe(Phone) do

    describe('#area_code') do
      it('returns the area_code, last_seven, and p_type') do
        test_phone = Phone.new({:area_code => 503, :last_seven => 6781999, :p_type => 'Home'})
        expect(test_phone.area_code()).to(eq(503))
        expect(test_phone.last_seven()).to(eq(6781999))
        expect(test_phone.p_type()).to(eq('Home'))
      end
    end
end
