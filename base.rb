require 'bundler/setup'
require 'sinatra/base'

module MoeMiddleware
	
end

class Moe < Sinatra::Base
	Dir.glob("./middlewares/moe_*.rb").each {|f|load f}
end
  
load "./settings.rb", false
load "./routes.rb", false
