class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #protect_from_forgery with: :exception

  helper :all

  def current_user
    #if session[:user_id]
    #  @current_user = User.find(session[:user_id])
    #end
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user #enables you to call current_user in the view now

end
