class GirlsController < ApplicationController

  def index
    guy = Guy.find(session[:guy_id])
    render json: guy.profile_picture
  end

  def create
    Girl.create(girl_params)
    #
  redirect_to '/guys/profile'
end

private

def girl_params
    params.require(:girl).permit(:name, :phone_number, :description_1, :description_2, :description_3, :profile_picture, :guy_id)

end

end
