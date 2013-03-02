# AppFog / Ruby / Rack / Sinatra (Modular) App Example

An example of a Rack based - modular Sinatra - app running on an AppFog instance.

Check out the [Live Demo Website](http://af-ruby-rack-sinatra-modular.ap01.aws.af.cm/).


This was created because I wanted to develop a modular app structure that could easily be extended by including multiple app modules and hosting these apps on AppFog.

After a few hours of googling and a bit of head scratching the answers were quite easy and obvious.

Hopefully this repository will save others some time.



## Usage


Steps to get the application to run:

1. `git clone git://github.com/kematzy/af-ruby-rack-sinatra-modular.git _YOUR_APP_NAME_`

2. `cd _YOUR_APP_NAME_`

3. Run `bundle install` followed by `bundle package` to ensure you have the required gems installed on your system.

4. Run `rackup -p PORT_NUMBER` to launch the app, and view the pages in your browser.

5. Make your required changes to the code base.

6. When finished, push the app to your AppFog account via `push <appname>`. *(see output below for reference)*

7. Visit your website live on AppFog and smile and be happy (hopefully).



## af push output


	$ af push af-ruby-rack-sinatra-modular 
	
	Would you like to deploy from the current directory? [Yn]: Y
	
	Detected a Rack Application, is this correct? [Yn]: Y
	1: AWS US East - Virginia
	2: AWS EU West - Ireland
	3: AWS Asia SE - Singapore
	4: Rackspace AZ 1 - Dallas
	5: HP AZ 2 - Las Vegas
	
	Select Infrastructure: <your_choice>
	
	Application Deployed URL [af-ruby-rack-sinatra-modular.ap01.aws.af.cm]: 
	
	Memory reservation (128M, 256M, 512M, 1G, 2G) [128M]: 
	
	How many instances? [1]: 
	
	Bind existing services to 'af-ruby-rack-sinatra-modular'? [yN]: N
	
	Create services to bind to 'af-ruby-rack-sinatra-modular'? [yN]: N
	
	Would you like to save this configuration? [yN]: y
	Manifest written to manifest.yml.
	
	Creating Application: OK
	Uploading Application:
	  Checking for available resources: OK
	  Processing resources: OK
	  Packing application: OK
	  Uploading (5K): OK   
	Push Status: OK
	Staging Application 'af-ruby-rack-sinatra-modular': OK                          
	Staging Application 'af-ruby-rack-sinatra-modular': OK                          
	Starting Application 'af-ruby-rack-sinatra-modular': OK    



## AppFog manifest.yml

A sample of the generated `manifest.yml`. Mainly just for Google.


	---
	applications:
	  .:
	    name: af-ruby-rack-sinatra-modular
	    framework:
	      name: rack
	      info:
	        mem: 128M
	        description: Rack Application
	        exec: 
	    infra: ap-aws
	    url: ${name}.${target-base}
	    mem: 128M
	    instances: 1
	

## Dear AppFog

Please feel free to take over this repository and the sample app and add it to your account and hosting the app.

I think it would be great for the AppFog community. 

