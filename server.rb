require 'sinatra'
require 'sendgrid-ruby'
include SendGrid

before do
  @class_name = "default"
end

get '/' do
  #@class_name to help specify styling on the home page, otherwise it will be "default" listed above

  @class_name = "home"
  erb :home
end

get '/page1' do
  erb :page1
end

get '/page2' do
  erb :page2
end

get '/contact' do
  @class_name = "contact"
  erb :contact
end

post '/contact' do

#From address from the form
from = Email.new(email: 'test@example.com')
to = Email.new(email: 'lobaker13@gmail.com')
  #Get from our form
subject = 'Sending with SendGrid is Fun'
  #Get from our form
content = Content.new(type: 'text/plain', value: 'Gotta have me some boats&hoes')
mail = Mail.new(from, subject, to, content)

sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
response = sg.client.mail._('send').post(request_body: mail.to_json)
puts response.status_code
puts response.body
puts response.headers
redirect "/contact"
end
