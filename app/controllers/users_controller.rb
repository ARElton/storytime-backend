class UsersController < ApplicationController
    before_action :authenticate

    def show 
        user = AuthorizeRequest.new(request.headers).user
        if user
            render json: user
        else
            render json: { error: "Please login" }, status: :unauthorized
        end
    end

    def index
        users = User.all 
        render json: users 
    end

    private

    def user_params
        params.require(:username, :name, :password)
    end

end
