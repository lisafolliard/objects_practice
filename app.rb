require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/contact')
require('./lib/phone')
require('./lib/email')
require('./lib/address')

get('/') do
  erb(:index)
end

get('/contact') do
  @all_contacts = Contact.all()
  erb(:contact)
end

get('/contact/form') do
  erb(:contact_new_form)
end

get('/email_form') do
  erb(:email_form)
end

get('/contact/:id') do
  @contact = Contact.find(params.fetch('id').to_i())
  erb(:individual_contact)
end


post('/contact') do
  @last_name = params.fetch("last_name")
  @first_name = params.fetch("first_name")
  @job_title = params.fetch("job_title")
  @company = params.fetch("company")
  Contact.new({:last_name => @last_name, :first_name => @first_name, :job_title => @job_title, :company => @company}).save()
  @all_contacts = Contact.all()
  erb(:success)
end

post('/individual_contact') do
  @email_address = params.fetch("email_address")
  @e_type = params.fetch("e_type")
  @email = Email.new({:email_address => @email_address, :e_type => @e_type})
  @email.save()
  @contact = Contact.find(params.fetch('id').to_i())
  @contact.add_email(@email)
  erb(:individual_contact)
end
