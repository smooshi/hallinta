class Software < ActiveRecord::Base
  has_one :software_in_agreement

  validates :name, :presence => true
  validates :identifier, :presence => true
end