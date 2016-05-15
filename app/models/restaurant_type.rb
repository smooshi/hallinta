class RestaurantType < ActiveRecord::Base
  has_many :restaurants, :dependent => :nullify
  validates :name, :presence => true, :message => "Names are mandatory."
end
