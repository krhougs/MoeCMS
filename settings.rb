class Moe
	use MoeMiddleware::Welcome
	use MoeMiddleware::User
	
	set :sessions, true

	set :public_folder, File.dirname(__FILE__) + '/static'
	set :views, settings.root + '/views'
	
	
end
