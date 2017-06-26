require 'sinatra'

get '/' do
  #If we want to specify a class for additional styling
  #@title = "Home Page"
  #@class_name = "home"
  erb :home
end

get '/page1' do
  erb :page1
end

get '/page2' do
  erb :page2
end

get '/contact' do
  erb :contact
end
