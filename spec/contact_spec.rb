require('rspec')
require('contact.rb')

describe(Contact) do

  describe('#last_name') do
    it('returns the last_name, first_name, job_title, and company') do
      test_contact = Contact.new({:last_name => "Smith", :first_name => "John", :job_title => 'Grand Poo Bah', :company => "The Man"})
      expect(test_contact.last_name()).to(eq("Smith"))
      expect(test_contact.first_name()).to(eq("John"))
      expect(test_contact.job_title()).to(eq("Grand Poo Bah"))
      expect(test_contact.company()).to(eq("The Man"))
    end
  end

end
