module MoeMiddleware
	class User < Sinatra::Base
		get "/user" do
			
		end	
		run! if (app_file == $0 && RACK_ENV == "development")
	end
end