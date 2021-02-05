class ChildrenController < ApplicationController

    def index
        children = Child.all 
        render json: children 
    end

    def show
        child = Child.find(params[:id])
        render json: child 
    end
    
end
