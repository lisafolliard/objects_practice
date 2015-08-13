require('rspec')
require('contact.rb')

describe(Contact) do
  before() do
    Contact.clear()
  end

  describe('#last_name') do
    it('returns the last_name, first_name, job_title, and company') do
      test_contact = Contact.new({:last_name => "Smith", :first_name => "John", :job_title => 'Grand Poo Bah', :company => "The Man"})
      expect(test_contact.last_name()).to(eq("Smith"))
      expect(test_contact.first_name()).to(eq("John"))
      expect(test_contact.job_title()).to(eq("Grand Poo Bah"))
      expect(test_contact.company()).to(eq("The Man"))
    end
  end

  describe('#save') do
    it('adds a contact to the array of saved contacts') do
      test_contact = Contact.new({:last_name => "Smith", :first_name => "Tom", :job_title => 'Grand Poo Bah', :company => "The Man"})
      test_contact.save()
      expect(Contact.all()).to(eq([test_contact]))
    end
  end

  describe('.all') do
    it('is empty at first') do
      expect(Contact.all()).to(eq([]))
    end
  end

  describe('.clear') do
    it('empties out all of the saved contacts') do
      Contact.new({:last_name => "Smith", :first_name => "Tom", :job_title => 'Grand Poo Bah', :company => "The Man"}).save()
      Contact.clear
      expect(Contact.all()).to(eq([]))
    end
  end

end
