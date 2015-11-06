class WelcomeController < ApplicationController

  include SessionsHelper

  def index
    @guy = Guy.new
    @guys = Guy.all

    @hitcher = Hitcher.new
    @hitchers = Hitcher.all
  end


end
