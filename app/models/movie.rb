class Movie < ActiveRecord::Base
  
  def self.all_ratings()
    ratings = ['G','PG','PG-13','R']
    return ratings
  end
  
  def self.with_ratings(ratings_list)
    retVal = Array.new
    Movie.all.each do |m|
      if ratings_list.include?(m.rating)
        retVal << m
      end
    end
    retVal
  end
  
end
