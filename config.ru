# load the different apps
%w( www/site.app api/api.app ).each { |f| require "#{Dir.pwd}/#{f}" }

# setup the paths for the apps to be mounted at
run Rack::URLMap.new(
  "/"       => AppFog::Site, 
  "/api"    => AppFog::Api
)

#/EOF