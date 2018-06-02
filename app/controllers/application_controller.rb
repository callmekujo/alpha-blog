class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  helper_method :current_user, :logged_in? #make it useable by all view models
  
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id] #return user if session user id matched session hash from user DB 
  end
  
  def logged_in?
    !!current_user #returns true if they are logged in
  end
  
  def require_user
    if !logged_in? 
      flash[:danger] = "You must be logged in to perfom that action"
      redirect_to root_path
      #makes sure user is logged in to perform an action 
    end
  end
  
  
end
