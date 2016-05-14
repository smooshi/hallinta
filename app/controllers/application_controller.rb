class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user, :admin_user, :ensure_that_admin
  before_filter :ensure_that_signed_in
  before_action :set_locale

  def set_locale
    if cookies[:educator_locale] && I18n.available_locales.include?(cookies[:educator_locale].to_sym)
      l = cookies[:educator_locale].to_sym
    else
      l = I18n.default_locale
      cookies.permanent[:educator_locale] = l
    end
    I18n.locale = l
  end

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
