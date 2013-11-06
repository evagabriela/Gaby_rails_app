module SessionsHelper
  def sign_in(user)
    cookies.permanent[:remember_token] = user.remember_token #rails automatically set the expiration to 20.years.from_now
    self.current_user = user
  end
end
