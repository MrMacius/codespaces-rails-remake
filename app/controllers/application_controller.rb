class ApplicationController < ActionController::Base
    before_action :configurre_permitted_parameters, if: :devise_controller?

    def setCurrentUser
        if session[:id]
            Current.user = User.find_by(id: session[:id])
        end
    end

    def configurre_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email, :password, :password_confirmation])
        devise_parameter_sanitizer.permit(:sign_in, keys: [:name, :password])
    end
end


