require 'sinatra'
require 'sendgrid-ruby'

include SendGrid



get '/' do 
    erb :index
end 


post '/contact' do
    @email = params[:email]
    @opinion = params[:opinion]

    from = Email.new(email: @email)
    to = Email.new(email: 'frank@digital.com')
    subject = 'Fast Food Elections 2109 - Public Opinions'
    content = Content.new(type: 'text/plain', value: @opinion)
    mail = Mail.new(from, subject, to, content)

    sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
    response = sg.client.mail._('send').post(request_body: mail.to_json)
    puts response.status_code
    puts response
    puts response.body
    # puts JSON.parse(response.body)
    # puts response.headers

    erb :index
end