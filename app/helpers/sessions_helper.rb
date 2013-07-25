module SessionsHelper

  def signed_in?
    if session[:remember_token] && User.find(session[:remember_token]) 
      true
    end
  end

  def current_user
    if self.signed_in?
      @user = User.find(session[:remember_token])
  end

end
