class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user, :admin_user

  before_filter :ensure_that_signed_in

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def admin_user
    current_user and current_user.admin?
  end

  def ensure_that_signed_in
    redirect_to log_in_path, notice:'you should be signed in' if current_user.nil?
  end

  def ensure_that_admin
    redirect_to root_path, notice:'you should be signed in as admin user' unless current_user.admin?
  end
end
