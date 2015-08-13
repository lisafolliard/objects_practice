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

  describe('#add_phone') do
    it('adds a new phone to contact') do
      test_contact = Contact.new({:last_name => "Smith", :first_name => "Tom", :job_title => 'Grand Poo Bah', :company => "The Man"})
      test_phone = Phone.new({:area_code => 503, :last_seven => 6781999, :p_type => 'Home'})
      test_contact.add_phone(test_phone)
      expect(test_contact.phone()).to(eq([test_phone]))
    end
  end

  describe('#add_email') do
    it('adds a new email to contact') do
      test_contact = Contact.new({:last_name => "Smith", :first_name => "Tom", :job_title => 'Grand Poo Bah', :company => "The Man"})
      test_email = Email.new({:email_address => 'kendra.ash32@gmail.com', :e_type => 'Work'})
      test_contact.add_email(test_email)
      expect(test_contact.email()).to(eq([test_email]))
    end
  end
  
  describe('#add_address') do
    it('adds a new address to contact') do
      test_contact = Contact.new({:last_name => "Smith", :first_name => "Tom", :job_title => 'Grand Poo Bah', :company => "The Man"})
      test_address = Address.new({:street_address => '208 Southwest 5th Avenue #205', :city => 'Portland', :state => "OR", :zip_code => 97204, :a_type => "Work"})
      test_contact.add_address(test_address)
      expect(test_contact.address()).to(eq([test_address]))
    end
  end

end
