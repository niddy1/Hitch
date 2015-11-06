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

  def responses
    response = Response.create(response_params)
    @hitcher = Hitcher.find(session[:hitcher_id])
    if params["girl_id"]
      girl = Girl.find(params["girl_id"])
      response[:response_description] = params["response_description"]
      response[:hitcher_id] = @hitcher.id
      girl.responses << response
      redirect_to "/hitchers/profile"
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

  def response_params
    params.permit(:response).permit(:response_description, :girl_id, :hitcher_id, :hitcher_rating)
  end

end
