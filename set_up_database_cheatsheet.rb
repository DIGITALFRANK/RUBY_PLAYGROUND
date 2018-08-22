
# create blank files and folders:

# public folder
# views folder
# app.rb
# Gemfile
# Rakefile
# Models folder






# populate them with starter-code:

# in gemfile:
# source 'https://rubygems.org' do
#     gem 'sinatra'
#     gem 'sinatra-activerecord'
#     gem 'rake'
#     gem 'pg'
# end


# in app.rb:

# require 'sinatra'
# require 'sinatra/activerecord'
# require 'rake'
# require 'pg'

# # require all your models models:
# require_relative './models/ModelName'

# # this line in the app.rb file sets the name of the database that you will create, and the postgresql/mysql/etc option
# set :database, {adapter: 'postgresql', database: 'practice_database'}





# # make a basic root route in your app.rb file:

# get "/" do
#     "<h1>You have reached the root route</h1>"
# end
# in the Rakefile:
# # configurations for rake:
# require 'sinatra/activerecord'
# # can build tasks here
# # we are requiring the rake configurations that sinatra has made
# require 'sinatra/activerecord/rake'
# # why are we pulling in the app?  so that rake applies the short-cuts to our app?
# # why does require sometimes work and sometimes not, with my local files?
# require_relative './app'
# run 'bundle install' in the command-line
# run ruby app.rb in command-line and check browser to make sure app is listening
# run rake db:create in the command-line (will create the database with the name that you put in the app.rb settings of sinatra)
# you now have a databse.
# next, set up the models for the tables:
# in command-line: create a migration
# ie 
# rake db:create_migration NAME=create_products
# this creates a db/migrate folder structre and puts a migration file in that folder
# the db:create_migration command generates this class and method in a new migration file, inheriting from ActiveRecord methods
# class CreateProducts < ActiveRecord::Migration[5.2]
#   def change
#      #put your commands here to create a table, or later add or remove rows, etc.
#   end
# end
# in the auto-generated 'change' method, write your code for how you want to update the database:
# #i.e. to create a table:
#  create_table :products do |table|
#       table.string :name
#       table.integer :price
#       table.string :description
#       table.boolean :in_stock
# end
# in the db folder, make a file called 'seeds.rb'
# run the create method on your table model, to populate your table:
# Product.create(name: "toy", price: 3, description: "a lovely toy", in_stock: true)
# create a models folder in the root directory.  (This could be done in the beginning, but
# this is the step where it is actually needed, in order to continue).
# create a Product.rb file (singular name of your table model)
# and put the class/inheritance structure:
# class Product < ActiveRecord::Base
#     #put your associations here (do you have to do this before or after running migrate/ does it matter?)
# end
# remember, at this point, to have your models required into your app.rb
# require_relative './models/Product' 
# in the command-line, run the 
# rake db:seed












### For live sessions using shotgun, add this to your server/app file: 
# configure do
#     enable :sessions unless test?
#     set :session_secret, "secret"
# end











### Ruby how to post a file via http as multipart from data
### You can check out the library here: http://github.com/nicksieger/multipart-post

# require 'net/http/post/multipart'

# url = URI.parse('http://www.example.com/upload')
# File.open("./image.jpg") do |jpg|
#   req = Net::HTTP::Post::Multipart.new url.path,
#     "file" => UploadIO.new(jpg, "image/jpeg", "image.jpg")
#   res = Net::HTTP.start(url.host, url.port) do |http|
#     http.request(req)
#   end
# end



### if the gem is not in your Gemfile, you can install it like this:
# $ sudo gem install multipart-post



### If you're connecting via SSL you need to start the connection like this:

# n = Net::HTTP.new(url.host, url.port) 
# n.use_ssl = true
# ## for debugging dev server
# ## n.verify_mode = OpenSSL::SSL::VERIFY_NONE
# res = n.start do |http|