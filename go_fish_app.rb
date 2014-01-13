require 'slim'
require 'sinatra/base'
require 'pry'



class LoginScreen < Sinatra::Base
  enable :sessions

  get('/login') { slim :login } #create login file

  post('/login') do
      unless params[:username].strip ==''
        session['user_name'] = params[:username]
        #puts "(if) params:  #{params.inspect} <br> <br> session:  #{session.inspect}"
        redirect '/'  
      else
        #puts "(else) params:  #{params.inspect} <br> <br> session:  #{session.inspect}"
        redirect '/login'
    end
  end
end

class MyApp < Sinatra::Base
  # middleware will run before filters
  use LoginScreen

  before do
    unless session['user_name']
      halt "Access denied, please <a href='/login'>login</a>."
    end
  end

  get '/' do
    #binding.pry
    slim :SamplePage
  end
end

=begin
get '/' do
  slim :SamplePage
end
=end


# margin-left: -20px;