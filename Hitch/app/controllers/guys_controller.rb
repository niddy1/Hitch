class GuysController < ApplicationController

  include SessionsHelper

# #this will be removed, it's just for demo
#     def demo
#         binding.pry
#     end


  def show
    @guys = Guy.all
    @guy = Guy.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end

end
