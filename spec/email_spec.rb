require('rspec')
require('email.rb')

describe(Email) do

  describe('#email_address') do
    it('returns the email_address and type of address') do
      test_email = Email.new({:email_address => 'kendra.ash32@gmail.com', :e_type => 'Work'})
      expect(test_email.email_address()).to(eq('kendra.ash32@gmail.com'))
      expect(test_email.e_type()).to(eq('Work'))
    end
  end
end
