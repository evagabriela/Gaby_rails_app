module SessionsHelper
  def sign_in(user)
    cookies.permanent[:remember_token] = user.remember_token #rails automatically set the expiration to 20.years.from_now
    self.current_user = user
  end

  def current_user=(user)
    @current_user = user
  end
  def current_user
    @current_user ||= User.find_by_remember_token(cookies[:remember_token])  #prevent nil
  end
end
