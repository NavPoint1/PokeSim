class AreasController < ApplicationController
    before_action :authorized
    def index
        @areas = Area.all
    end

    def show
        @area = Area.find(params[:id])
        @species = @area.encounter_species
    end
end
