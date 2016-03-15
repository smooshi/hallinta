class Restaurant < ActiveRecord::Base
  belongs_to :company
  belongs_to :restaurant_type
end
