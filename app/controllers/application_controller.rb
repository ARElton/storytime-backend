class ApplicationController < ActionController::API
    before_action :authenticate 

    # def authenticate
    #     @current_user = User.first
    # end

    def authorize 
        @user = AuthorizeRequest.new(request.headers).user

        unless @user
            render json: { error: "Unauthorized request" }, status: :unauthorized 
        end
    end

end
