class Ideas < ActiveRecord::Base

  def ideator
    begin
      return User.find(self.ideator_id)
    rescue Exception => e
      return nil
    end
  end

  def observer
    begin
      return self.observer_id ? User.find(self.observer_id) : nil  
    rescue Exception => e
      return nil
    end
  end
end
