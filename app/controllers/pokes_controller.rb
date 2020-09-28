class PokesController < ApplicationController
    def new
        @poke = Poke.new
        @starters = [Species.find_by(name: "Charizard"), Species.find_by(name: "Blastoise"), Species.find_by(name: "Venusaur")]
    end

    def create
        trainer_id = session[:trainer_id]
        @poke = Poke.create(
            species_id: params[:poke][:species_id], # shouldnt this be strong params?
            trainer_id: trainer_id,
            in_party: true
        )
        
        redirect_to trainer_path(current_user)
    end

    def catch
        # how to use strong params for this?
        @poke = Poke.create(
            species_id: params[:id], 
            trainer: current_user,
            in_party: true
        )
        
        redirect_to trainer_path(current_user) 
    end

    private
    def strong_params
        params.require(:poke).permit(:species_id)
    end
end
