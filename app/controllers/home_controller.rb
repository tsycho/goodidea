class HomeController < ApplicationController
  def index
  	@users = User.all
  	@ideas = Ideas.all
  end
end
