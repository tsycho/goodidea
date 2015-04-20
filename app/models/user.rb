class User < ActiveRecord::Base

  def good_count
    return Ideas.where("ideator_id = ?", self.id).count
  end
end
