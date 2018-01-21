class WelcomeController < ApplicationController

    def index
        @current_activity = CurrentActivity.first
        respond_to do |format|
            format.html { render :index }
        end
    end

end
