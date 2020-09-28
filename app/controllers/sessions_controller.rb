class SessionsController < ApplicationController

    def new
        @trainer = Trainer.new
    end

    def create
        session[:name] = params[:name]
        session[:password] = Bcrypt::Password(params[:password])
        if !valid_credentials?
            render :new
        elsif !existing_account?
            redirect_to # your saved trainer show page??
        end
    end

    def destroy
        session.delete :name
        session.delete :password
        redirect_to home_path
    end

    private

    def valid_credentials?
        if !session[:name] || !session[:password] || session[:name] == "" || session[:password] == ""
            return false
        else
            return true
        end
    end
end
