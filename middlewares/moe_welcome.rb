module MoeMiddleware
	class Welcome < Sinatra::Base
		get "/welcome" do
			"索尼大法好！"
		end	
		get "/discover" do
			
		end
		run! if (app_file == $0 && RACK_ENV == "development")
	end
end