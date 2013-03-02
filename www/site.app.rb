require 'sinatra/base'
module AppFog

  class Site < Sinatra::Base
    
    set :protection, :except => :ip_spoofing
    
    set :views,         "#{Dir.pwd}/www/app/views"
    set :public_folder, "#{Dir.pwd}/public"
    
    get '/' do 
      erb :index
    end
    
    get '/about' do 
      erb :about
    end
    
    # start the server if ruby file executed directly
    run! if app_file == $0
  end
end

#/EOF