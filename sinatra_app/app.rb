require 'sinatra'


# Index Route
# HTTP VERB + ROUTE IN QUOTES
get '/' do
    erb :index
end


#Dynamic Route 
# get '/student/:id' do
#     if params[:id] == '1'
#         erb :student_1
#     else
#         erb :student_regular
#     end
# end


# Passing ruby info from the route to the template
get '/student/:id' do
    @ruby_info = params[:id]
    erb :student_regular
end
