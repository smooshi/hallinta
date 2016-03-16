class RestaurantEvaluation < ActiveRecord::Base
  belongs_to :restaurant
  belongs_to :company
  belongs_to :restaurant_evaluation_type
  belongs_to :user

  validates :restaurant_id, presence: true
  validates :restaurant_evaluation_type_id, presence: true
  validates :value, :inclusion => {:in => 1..5}
  validates_uniqueness_of :user_id, :scope => [:user_id, :restaurant_id, :restaurant_evaluation_type_id]
end
