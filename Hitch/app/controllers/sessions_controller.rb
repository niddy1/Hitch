class SessionsController < ApplicationController

  # sessions POST   /sessions(.:format)      sessions#create
  def create
      username = params[:username]
      password = params[:password]
      guy = Guy.find_by({username: username})
      if guy && guy.authenticate(password)
          session[:guy_id] = guy.id
          redirect_to profile_path
      else
          redirect_to log_in_path
      end

  end

  def destroy
    session[:guy_id] = nil
    redirect_to log_in_path
  end



end
