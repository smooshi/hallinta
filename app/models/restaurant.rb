class Restaurant < ActiveRecord::Base
  belongs_to :company
  belongs_to :restaurant_type
  has_many :contact_persons
  has_many :restaurant_evaluations
  belongs_to :customer

  validates :company_id, presence: true
end
