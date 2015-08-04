require 'sinatra'
require 'sinatra/activerecord'
require "sinatra/activerecord/rake"

namespace :db do
  task :load_config do
    set :database_file, (File.join File.dirname(__FILE__), 'database.yml')
  end
end
