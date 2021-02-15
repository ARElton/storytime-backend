class UsersController < ApplicationController

    def profile
        user = AuthozrizeRequest.new(request.headers).user
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

    def show
        user = User.find(params[:id])
        render json: user 
    end

    # def autologin
    #     render json: @current_user
    # end

    private

    def user_params
        params.require(:username, :name, :password)
    end

end
