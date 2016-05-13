class RestaurantEvaluationType < ActiveRecord::Base
  has_many :restaurant_evaluations, :dependent => :restrict_with_exception
end
