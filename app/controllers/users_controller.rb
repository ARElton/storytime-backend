class UsersController < ApplicationController

    def index
        users = User.all 
        render json: users 
    end

    def show
        user = User.find(params[:id])
        render json: user 
    end

    def autologin
        render json: @current_user
    end

    def register 
        register_params = params.permit(:username, :name, :password)

        user = User.create(register_params)

        if user.valid?
            token = JWT.encode({ user_id: user.id }, Rails.application.secrets.secret_key_base, 'HS256')
            render json: { user: UserSerializer.new(user), token: token }, status: :created
        else
            render json: { error: user.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def login
        user = User.find_by(username: params[:usernames])
        if user && user.authenticate(params[:password])
            token = JWT.encode({ user_id: user.id }, Rails.application.secrets.secret_key_base, 'HS256')
            render json: { user: UserSerializer.new(user), token: token }
        else 
            render json: { error: user.errors.full_messages }, status: :unauthorized
        end 
    end

end
