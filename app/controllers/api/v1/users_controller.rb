class Api::V1::UsersController < ApplicationController
    skip_before_action :logged_in?, only: [:create]
    def index 
        users = User.all 
        if users
            render json: users
        else
            render json: {
              status: 500,
              errors: ['no users found']
            }
          end 
    end

    def show 
        user = User.find(params[:id])
        if user
            render json: user
        else
            render json: {
              status: 500,
              errors: ['no users found']
            }
          end
    end

    def create 
        byebug
        user = User.new(user_params)
        if user.valid?
            user.save
            render json: {username: user.username, token: encode_token({user_id: user.id} )}
        else
            render json: {error: "Failed to create a user"}, status: :not_acceptable
          end
    end

    def update 
        user = User.find(params[:id])
        if user
            user.update(user_params)
            render json: user
        else
            render json: {
              status: 500,
              errors: ['no users found']
            }
          end
    end

    def destroy 
        user = User.find(params[:id])
        if user
            user.destroy
            render json: "User deleted!"
        else
            render json: {
              status: 500,
              errors: ['no users found']
            }
          end
    end

    private

    def user_params 
        params.permit(:username, :password, :name)
    end

end
