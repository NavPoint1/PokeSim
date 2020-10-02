class SpeciesController < ApplicationController

    START_ANIMATIONS = ["rollIn", "bounceInLeft", "rotateInDownRight", "fadeInUpBig", "zoomInUp", "zoomIn", "rotateInUpRight"]
    BREAK_ANIMATIONS = ["wobble", "rubberBand"]
    CATCH_ANIMATIONS = ["zoomOut"]
    FLEE_ANIMATIONS = ["lightSpeedOut", "fadeOutUpBig", "rollOut"]

    def show
        @species = Species.find(params[:id])
        @flag = 1
        @animation = START_ANIMATIONS.sample
    end
    
    def catch
        @species = Species.find(params[:id])
        if @species.catch_trigger
            # caught it
            @flag = 2     
            @animation = CATCH_ANIMATIONS.sample 
        elsif @species.flee_trigger
            # got away
            @flag = 3
            @animation = FLEE_ANIMATIONS.sample
        else
            # broke free
            @flag = 4
            @animation = BREAK_ANIMATIONS.sample
        end
        render :show
    end
end
