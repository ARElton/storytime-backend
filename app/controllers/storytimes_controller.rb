class StorytimesController < ApplicationController

    def index
        storytimes = Storytime.all 
        render json: storytimes 
    end

end
