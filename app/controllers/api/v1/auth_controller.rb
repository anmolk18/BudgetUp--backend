class Api::V1::AuthController < ApplicationController
    skip_before_action :logged_in?, only: [:create]

    #Login
    def create
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
                render json: {username: user.username, token: encode_token({user_id: user.id}) }
        else 
            render json: {error: "invalid username or password"}
        end
    end


end