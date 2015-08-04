require 'sinatra/activerecord'

class Moe < Sinatra::Base

 	set :assets_prefix, '/assets'
 	set :digest_assets, true


	set :sessions, true
	set :database_file, (File.join File.dirname(__FILE__), 'database.yml')
	set :public_folder, File.dirname(__FILE__) + '/static'
	set :views, settings.root + '/views'

	use MoeMiddleware::Welcome
	use MoeMiddleware::User

	register Sinatra::ActiveRecordExtension
end
