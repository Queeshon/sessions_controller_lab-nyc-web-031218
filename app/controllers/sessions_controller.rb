class SessionsController < ApplicationController

  def new
  end

  def create
    #byebug
    if params[:name] && params[:name] != ''
      session[:name] = params[:name]
      redirect_to root_path
    else
      redirect_to sessions_new_path
    end
  end

  def destroy
    session.delete :name
    redirect_to login_path
  end

end
