class AuthorizationController < ApplicationController
  def login
    session[:secret]=params[:password]
    redirect_to :back
  end

  def logout
    session[:secret]=nil
    redirect_to :back
  end

end
