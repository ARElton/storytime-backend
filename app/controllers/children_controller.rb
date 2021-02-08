class ChildrenController < ApplicationController

    def index
        children = Child.all 
        render json: children 
    end

    def show
        child = Child.find(params[:id])
        render json: child 
    end

    def create 
        child = Child.create(child_params)
        if child.valid? 
            render json: child 
        else
            render json: { error: child.errors.full_messages }, status: :unprocessable_entity
        end
    end

    private

    def child_params
        params.permit(:user_id, :name, :age)
    end
    
end
