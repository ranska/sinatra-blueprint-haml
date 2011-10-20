require 'rubygems'
require 'sinatra'
require 'haml'



helpers do
  def partial(page, options={})
    haml page, options.merge!(:layout => false)
  end
end


get '/hi' do
  "Hello World!"
end

get '/' do
  erb :index
  # renders views/index.erb

  # OR look in a sub-directory
end

get '/my_template' do
  @weather = "sunny"
  @temperature = 80
  haml :weather
end


get '/blue_1' do
  haml :blue_1
end

get '/blue_2' do
  @lorem_m = "
consectetuer adipiscing elit
Nunc congue ipsum vestibulum libero. Aenean vitae justo. 
Nam eget tellus. Etiam convallis, 
est eu lobortis mattis, lectus tellus tempus felis, 
a ultricies erat ipsum at metus."
@lorem = "
Lorem ipsum dolor sit amet, 
consectetur adipisicing elit, sed do eiusmod tempor 
incididunt ut labore et dolore magna aliqua. 
Ut enim ad minim veniam, quis nostrud 
exercitation ullamco laboris nisi ut aliquip 
ex ea commodo consequat. Duis aute 
irure dolor in reprehenderit in voluptate 
velit esse cillum dolore eu fugiat nulla 
pariatur. Excepteur sint occaecat 
cupidatat non proident, sunt in culpa qui officia
deserunt mollit anim id est laborum.
eos"
haml :blue_2
end

get '/blue_3' do
  haml :blue_3
end

