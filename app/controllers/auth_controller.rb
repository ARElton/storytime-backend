class AuthController < ApplicationController
    
    def register 
        user = User.create(register_params)
        if user.valid?
            token = JWT.encode({ user_id: user.id }, Rails.application.secrets.secret_key_base, 'HS256')
            render json: :user, status: :created
        else
            render json: { error: user.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def login
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            token = JWT.encode({ user_id: user.id }, Rails.application.secrets.secret_key_base, 'HS256')
            render json: { user: UserSerializer.new(user), token: token }
        else 
            render json: { error: user.errors.full_messages }, status: :unauthorized
        end 
    end

    private 

    def register_params
        params.permit(:username, :name, :password)
    end

end