class Movie < ActiveRecord::Base
  
  def all_ratings():
    ratings = ['G','PG','PG-13','R']
    return ratings
  end
  
  def self.with_ratings(ratings_list):
    retVal = []
    Movie.all.each do |m|
      if m.rating in ratings_list:
        retVal.add(m)
      end
    end
   
    return retVal
  end
  
end
