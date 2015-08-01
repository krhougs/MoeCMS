class Moe

 	set :assets_prefix, '/assets'
 	set :digest_assets, true

	helpers do
		include Sprockets::Helpers
	end

	set :sessions, true

	set :public_folder, File.dirname(__FILE__) + '/static'
	set :views, settings.root + '/views'

	use MoeMiddleware::Welcome
	use MoeMiddleware::User
end
