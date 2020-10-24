class Movie < ActiveRecord::Base
  
  def self.all_ratings()
    ratings = ['G','PG','PG-13','R']
    return ratings
  end
  
  def self.with_ratings(ratings_list)
    retVal = Movie.where("rating in (?)", ratings_list)
    return retVal
  end
  
end
