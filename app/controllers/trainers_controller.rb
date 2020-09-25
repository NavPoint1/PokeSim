class TrainersController < ApplicationController
    def index
        @trainers = Trainer.all
    end
    def show
        @trainer = Trainer.find(params[:id])
    end
    def new
        @trainer = Trainer.new
    end
    def create
        @trainer = Trainer.create(
            strong_params
        )
        session[:user_trainer_id] = @trainer.id
        redirect_to new_poke_path
    end

    private
    def strong_params
        params.require(:trainer).permit(:name)
    end

end
