module MoeMiddleware
	class Welcome < Sinatra::Base
		get "/welcome" do
			"welcome!"
		end	
		run! if (app_file == $0 && RACK_ENV == "development")
	end
end