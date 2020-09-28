class ApplicationController < ActionController::Base
    helper_method :current_user, :current_user_name, :logged_in?

    def home
        if logged_in?
            redirect_to trainer_path(current_user)
        else
            render :home
        end
    end

    def current_user
        Trainer.find_by(id: session[:trainer_id])
    end

    def current_user_name
        current_user.name
    end

    def logged_in?
        !!current_user
    end

    def authorized
        if !logged_in?
            flash[:message] = "You must be logged in to do that."
            redirect_to home_path
        end
    end

end
