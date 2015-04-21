class HomeController < ApplicationController
  def index
    @users = User.all
    @ideas = Ideas.all
  end

  def create
    ideator_id = params["ideator_id"]
    observer_id = params["observer_id"]
    desc = params["description"]

    Ideas.create(:ideator_id => ideator_id, :observer_id => observer_id, :description => desc)
    redirect_to :root
  end

  def delete
    begin
      idea_id = params["idea_id"]
      idea = Ideas.find(idea_id)
      idea.delete if idea
    rescue Exception => e      
    end
    
    redirect_to :root
  end
end
