class Restaurant < ActiveRecord::Base
  belongs_to :company
  belongs_to :restaurant_type
  has_many :contact_persons
end
