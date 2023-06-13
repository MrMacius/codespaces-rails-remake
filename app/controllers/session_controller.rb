class SessionController < ApplicationController

  def new
  end

  def create
      user = User.find_by(name: params[:name])
      
      if user.present?
          session[:id] = user.id
          redirect_to public_home2_path, notice: "LOGGED IN SUCCESFULY!"
          flash[:alert] = "LOGGED IN SUCCESFULLY!"
      else
          flash[:alert] = "INVALID NAME OR PASSWORD"
          render :new
      end
  end

  def destroy
      session[:id] = nil
      redirect_to root_path, notice: "LOGGED OUT"
  end

end