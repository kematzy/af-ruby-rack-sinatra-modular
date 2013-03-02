require 'sinatra/base'

module AppFog 
  
  class Api < Sinatra::Base 
    
    set :protection, :except => :ip_spoofing
    
    set :views, "#{Dir.pwd}/api/app/views"
    set :public_folder, "#{Dir.pwd}/public"
    
    get '/' do 
      erb :index
    end
    
    get '/:model/?' do 
      "API Model=[#{params[:model]}]\n\n"
    end
    
    get '/:model/:ref' do 
      "API Model=[#{params[:model]}] <br>Ref=[#{params[:ref]}]\n\n"
    end
    
    # start the server if ruby file executed directly
    run! if app_file == $0
  end
  
end

#/EOF