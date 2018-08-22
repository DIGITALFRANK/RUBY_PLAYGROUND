
# Heroku Deployment
# 1. Visit https://www.heroku.com/ and sign up for an account.



# 2. Create a new app in the Heroku Application Dashboard.
# Reference Image



# 3. Visit and download the Heroku Git CLI (Using Brew) https://devcenter.heroku.com/articles/heroku-cli



# 4. Go back to the dashboard and follow the CLI setup instructors for your app.
# Reference Image #1
# Reference Image #2

# Navigate to your project and init your repo with git if you have not already
# $ cd my_project
# $ git init
# Setup the remote to track to push to heroku. This command is found in the “Existing Git Repo” option inside of the deployment documentation in the app admin panel.
# $ heroku git:remote -a insert-app-name-here



# 5. Finnaly we have to setup our sinatra app to work with heroku.

# Create a config.ru file in your project. This is called a ‘rackup’ file, and helps us host rack-based frameworks on heroku. It can be used for other things but for now our main goal is heroku. https://devcenter.heroku.com/articles/rack

# Add the following code

#     require './app' #or whatever your main app file is called 
#     run Sinatra::Application

# Also comment out the following line in your app.rb
# set :database, {adapter: 'postgresql', database: 'doggydaycare'}
    

# 6. Next we have to setup the database for Heroku
# Create a config folder with one file and put the follwing inside :

# database.yml

#   development:
#   adapter: postgresql
#   database: doggydaycare #or whatever your db is called

#   production:
#   adapter: postgresql
#   host: <%= ENV['DATABASE_URL'] %> #This is an env variable that Heroku creates for us. Can be found in your settings config vars



# 7. Cool now we now have to have heroku setup the database on its end. Run the following

#     $ git add .
#     $ git commit -am "make it better"
#     $ git push heroku master
# and then:

#     $ heroku rake db:migrate
#     $ heroku rake db:seed



# 8. Now if everything went alright, go back to your admin panel homepage and on the top right you can launch your app up!

# Side Notes:

# Debugging in heroku can sometimes be a pain.
# If you experiance an error, go back to where you used the open app button and click the “more” dropdown. There you can access a panel for logs. You can also do this in your console using the command heroku logs but it is a bit harder to read.