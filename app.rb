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

post('/contact') do
  @last_name = params.fetch("last_name")
  @first_name = params.fetch("first_name")
  @job_title = params.fetch("job_title")
  @company = params.fetch("company")
  Contact.new({:last_name => @last_name, :first_name => @first_name, :job_title => @job_title, :company => @company}).save()
  @all_contacts = Contact.all()
  erb(:success)
end
