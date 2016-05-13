class Software < ActiveRecord::Base
  belongs_to :software_in_agreement

  validates :name, :presence => true
  validates :identifier, :presence => true
end