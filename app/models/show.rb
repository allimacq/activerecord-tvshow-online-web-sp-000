class Show < ActiveRecord::Base
  
  def self.highest_rating
    self.maximum(:rating)
  end
  
  def self.most_popular_show
    #highest_rating = self.highest_rating
    show = self.find_by(:rating => self.highest_rating)
  end
    
end