class SessionsController < ApplicationController
  skip_before_filter :ensure_that_signed_in

  def new
  end

  def create
    user = User.authenticate(params[:email], params[:password])
    if user and user.currently_employed
      session[:user_id] = user.id
      redirect_to root_url, :notice => "Logged in!"
    else
      flash.now.alert = "Invalid email or password"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Logged out!"
  end
end
