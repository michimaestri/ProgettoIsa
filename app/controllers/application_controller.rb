class ApplicationController < ActionController::Base
  
  helper_method :current_user, :logged_in?
  def current_user
    @current_user ||=User.find(session[:user_id]) if session[:user_id]
  end

  
  def logged_in?
    !!current_user
  end

  def require_user
    #! è not
    if !logged_in?
      flash[:alert]="Devi aver effettuato il log in per effettuare questa azione"
      redirect_to login_path
    end
  end
end
