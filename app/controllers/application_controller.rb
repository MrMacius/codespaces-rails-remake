class ApplicationController < ActionController::Base
    before_action :setCurrentUser

    def setCurrentUser
        if session[:id]
            Current.user = User.find_by(id: session[:id])
        end
    end
end


