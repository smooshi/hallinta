class Software < ActiveRecord::Base
  has_one :software_in_agreement

  validates :name, :presence => true, :message => "Names are mandatory."
  validates :identifier, :presence => true
end