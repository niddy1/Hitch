class HitchersController < ApplicationController
  include SessionsHelper

# #this will be removed, it's just for demo
#     def demo
#         binding.pry
#     end

  def create
      Hitcher.create(hitcher_params)
      redirect_to log_in2_path
  end

  def new
    @hitcher = Hitcher.new
  end

  # get '/users/profile' => 'users#profile', as: :profile
  def profile
      if session[:hitcher_id]
        @hitcher = Hitcher.find(session[:hitcher_id])
        @girl = Girl.all
      else
        redirect_to log_in2_path
      end
  end

  # get '/users/log_in' => 'users#log_in', as: :log_in
  def log_in
  end
  # def show
  #   @hitchers = hitcher.all
  #   @hitcher = hitcher.find(params[:id])
  #
  #   respond_to do |format|
  #     format.html # show.html.erb
  #     format.json { render json: @user }
  #   end
  # end
  private

  def hitcher_params
      params.require(:hitcher).permit(:username, :password, :phone_number)
  end

end
