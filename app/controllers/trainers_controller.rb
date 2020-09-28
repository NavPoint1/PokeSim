class TrainersController < ApplicationController
    before_action :authorized, except: [:new, :create, :login, :process_login]

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
        @trainer = Trainer.new(strong_params)
        if @trainer.save
            session[:trainer_id] = @trainer.id
            redirect_to new_poke_path
        else
            render :new
        end
    end

    def login
        @trainer = Trainer.new
    end

    def process_login
        trainer = Trainer.find_by(name: params[:name])
        if trainer && trainer.authenticate(params[:password])
            session[:trainer_id] = trainer.id
            redirect_to trainer_path(trainer)
        else
            flash.now[:message] = "Invalid username or password. We're sorry we can't tell you which--blame the hackers."
            render :login
        end
    end

    def logout
        session.clear
        flash[:message] = "You have been logged out."
        redirect_to home_path
    end

    private
    def strong_params
        params.require(:trainer).permit(:name, :password)
    end

end
