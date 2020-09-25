class PokesController < ApplicationController
    def new
        @poke = Poke.new
        @starters = [Species.find_by(name: "Charizard"), Species.find_by(name: "Blastoise"), Species.find_by(name: "Venusaur")]
    end
    def create
        
        trainer_id = session[:user_trainer_id]
        @poke = Poke.create(
            species_id: params[:poke][:species_id],
            trainer_id: trainer_id,
            in_party: true
        )
        
        redirect_to trainer_path(trainer_id)
    end

    private
    def strong_params
        params.require(:poke).permit(:species_id)
    end
end
