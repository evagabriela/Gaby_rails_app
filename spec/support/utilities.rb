include ApplicationHelper

  def valid_signin(user)
    fill_in "Email",    with: user.email
    fill_in "Password", with: user.password
    click_button "Sign in"
  end

  RSpec::Matchers.define :have_error_message do |message|
    match do |page|
      page.should have_selector('div.alert.alert-error', text: message)
  end

  def sign_in(user)
    visit signin_path
    fill_in "Email",    with: user.email
    fill_in "Password", with: user.password
    click_button "Sign in"
    #Sign in when not using capybara as well
    cookies[:remember_token] = user.remember_token #filling in the form doesn’t work when not using Capybara, so to cover this case we also add the user’s remember token to the cookies
  end
end