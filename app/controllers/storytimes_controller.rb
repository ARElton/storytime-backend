class StorytimesController < ApplicationController

    def index
        storytimes = Storytime.all 
        render json: storytimes 
    end

    def show
        storytime = Storytime.find(params[:id])
        render json: storytime 
    end

end
