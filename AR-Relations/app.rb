require "sinatra"
require "sinatra/activerecord"

#Dont forget to require your models
require_relative './models/course'
require_relative './models/ta'
require_relative './models/instructor'
require_relative './models/student'
require_relative './models/coursesstudents'


#The goal of the app is setup the following relationships for our classroom managment app.
#Course have one instructor : one to one
#Course have many students. Students have many Course : many to many
#Course have many TAs : one to many

#Give each table atleast 2-3 properties. Remember to put the FK! Otherwise you wont be able to setup relationships!



set :database, {adapter: 'postgresql', database: 'ORMrelationsTEST'}

############  >>>  the goal is to do all CRUD operations  <<<  ##############

#We want to display the following :
#All students part of a specific course
#All instructors part of a course
#All tas part of a course
get '/course/:id' do
    currentcourse = params[:id]
    the_course = Course.find(currentcourse)

    @all_course_students = the_course.students
    @instructor = the_course.instructor
    @all_tas = the_course.tas

    erb :class
end

# create a student using a POST method form  => check erb file
get '/student/new' do 
    erb :create_new_student
end

# create a student using a POST method form  => continued
post '/student/created' do 
    @name = params[:name]
    @email = params[:email]
    @course = params[:course]

    Student.create(name: @name, email: @email)

    # redirect '/'    <= syntax for redirecting to an existing route
    erb :welcome_new_student
end


# edit the details of a student using a POST method form  => check erb file
get '/student/:id/edit' do 
    @student_id = params[:id]
    @student = Student.find(params[:id])
    erb :edit_student
end

put '/student/:id' do
    @student = Student.find(params[:id])
    @student.update(name: params[:name], email: params[:email])
end

# Delete Student (D)
delete '/student/:id' do
    @student_id = params[:id]
    Student.destroy(@student_id)
end