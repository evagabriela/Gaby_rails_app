class SessionsController < ApplicationController
  def new
    
  end

  def create
    user = User.find_byemail(params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      #Sign the user in and redirect to the user's show page
    else
      #creae an error message and re-render the signin form
    end
  end

  def destroy
    
  end
end
