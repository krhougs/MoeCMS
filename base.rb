require 'bundler/setup'
require 'sinatra/base'
require 'pry'


module MoeMiddleware
	
end

class Moe < Sinatra::Base
	Dir.glob("./middlewares/moe_*.rb").each {|f|load f}
end
  
load "./config.rb", false
load "./routes.rb", false
