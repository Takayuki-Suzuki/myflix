class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :require_user, :current_user, :signed_in?

  def require_user
    redirect_to sign_in_path unless current_user
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def signed_in?
    current_user
  end
end
