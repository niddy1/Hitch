class GuysController < ApplicationController

  include SessionsHelper

# #this will be removed, it's just for demo
#     def demo
#         binding.pry
#     end

  def create
      Guy.create(guy_params)
      redirect_to log_in_path
  end

  def new
    @guy = Guy.new
  end

  # get '/users/profile' => 'users#profile', as: :profile
  def profile
      if session[:guy_id]
        @guy = Guy.find(session[:guy_id])
      else
        redirect_to log_in_path
      end
  end

  # get '/users/log_in' => 'users#log_in', as: :log_in
  def log_in
  end
  # def show
  #   @guys = Guy.all
  #   @guy = Guy.find(params[:id])
  #
  #   respond_to do |format|
  #     format.html # show.html.erb
  #     format.json { render json: @user }
  #   end
  # end
  private

  def guy_params
      params.require(:guy).permit(:username, :password, :phone_number)
  end

end
