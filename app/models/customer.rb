class Customer < ActiveRecord::Base
  belongs_to :restaurant

  validates :restaurant_id, presence: true, uniqueness: true
  validates :start_date, presence: true
  validates :end_date, presence: true
end
