class ChildActivitiesController < ApplicationController

    def index
        child_activities = ChildActivity.all 
        render json: child_activities 
    end

    def show
        child_activity = ChildActivity.find_by(id: params[:id])
        if child_activity
            render json: child_activity
        else
            render json: { error: "Not Found"}, status: :not_found
        end
    end

    def create
        child_activity = ChildActivity.create(child_activity_params)
        if child_activity.valid?
            render json: child_activity
        else
            render json: { error: child_activity.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def destroy
        child_activity = ChildActivity.find_by(id: params[:id])
        child_activity.destroy
    end

    def update 
        child_activity = ChildActivity.find_by(id: params[:id])
        child_activity.update(child_activity_params)
        render json: child_activity
    end

    private 

    def child_activity_params
        params.permit(:child_id, :activity_id, :comment)
    end

end
