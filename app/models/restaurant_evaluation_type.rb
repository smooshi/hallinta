class RestaurantEvaluationType < ActiveRecord::Base
  has_many :restaurant_evaluations, :dependent => :restrict_with_exception
  validates :name, :presence => true, :message => "Names are mandatory."
end
