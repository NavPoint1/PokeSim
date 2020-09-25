class SpeciesController < ApplicationController

    def show
        @species = Species.find(params[:id])
        @flag = 1
    end
    
    def catch
        @species = Species.find(params[:id])
        if @species.catch_trigger
            @flag = 2        
        elsif @species.flee_trigger
            @flag = 3
        else
            @flag = 4
        end
        render :show
    end
end
