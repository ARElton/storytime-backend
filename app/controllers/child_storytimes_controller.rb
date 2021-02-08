class ChildStorytimesController < ApplicationController

    def index
        child_storytime = ChildStorytime.all 
        render json: child_storytime
    end

    def show
        child_storytime = ChildStorytime.find_by(id: params[:id])
        if child_storytime
            render json: child_storytime
        else
            render json: { error: "Not Found"}, status: :not_found
        end
    end

    def create
        child_storytime = ChildStorytime.create(child_storytime_params)
        if child_storytime.valid?
            render json: child_storytime
        else
            render json: { error: child_storytime.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def destroy
        child_storytime = ChildStorytime.find_by(id: params[:id])
        child_storytime.destroy
    end

    def update 
        child_storytime = ChildStorytime.find_by(id: params[:id])
        child_storytime.update(child_storytime_params)
        render json: child_storytime
    end

    private 

    def child_storytime_params
        params.permit(:child_id, :storytime_id, :comment)
    end
end
