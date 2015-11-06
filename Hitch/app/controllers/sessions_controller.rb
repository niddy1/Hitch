class SessionsController < ApplicationController

  # sessions POST   /sessions(.:format)      sessions#create
  def create
      username = params[:username]
      password = params[:password]
      guy = Guy.find_by({username: username})

      username2 = params[:username]
      password2 = params[:password]
      hitcher = Hitcher.find_by({username: username2})

      if guy && guy.authenticate(password)
          session[:guy_id] = guy.id
          redirect_to profile_path

      elsif hitcher && hitcher.authenticate(password2)
            session[:hitcher_id] = hitcher.id
            redirect_to profile2_path

      else
          redirect_to log_in_path
      end


      # username2 = params[:username]
      # password2 = params[:password]
      # hitcher = Hitcher.find_by({username: username2})
      # if hitcher && hitcher.authenticate(password2)
      #     session[:hitcher_id] = hitcher.id
      #     redirect_to profile2_path
      # else
      #     redirect_to log_in2_path
      # end

  end

  def destroy
    session[:guy_id] = nil
    redirect_to log_in_path
  end



end
