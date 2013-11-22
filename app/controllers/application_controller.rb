class ApplicationController < ActionController::Base
 force_ssl

private

def current_user
  @current_user ||= User.find(session[:user_id]) if session[:user_id]
end
helper_method :current_user.
  protect_from_forgery with: :exception
end
