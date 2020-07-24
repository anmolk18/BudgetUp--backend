class ApplicationController < ActionController::API
    
    before_action :logged_in?

    def encode_token(payload) 
        JWT.encode(payload, "Password")
    end 

    def logged_in?
        headers = request.headers["Authorization"]
        token = headers.split(" ")[1]

        begin 
            user_id = JWT.decode(token, "Password")[0]["user_id"]
            user = User.find(user_id)
        rescue 
            user = nil 
        end 

        render json: {error: "Please Login"} unless user
    end
end
