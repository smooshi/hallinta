class Customer < ActiveRecord::Base
  has_one :restaurant

  validates :restaurant_id, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
end
