require "active_record"
require 'yaml'


config = YAML.load(File.open(File.join File.dirname(__FILE__), 'database.yml'))

ActiveRecord::Base.establish_connection config[ENV['RACK_ENV']]

class User < ActiveRecord::Base

end
