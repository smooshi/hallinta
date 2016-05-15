class DeviceType < ActiveRecord::Base
  has_many :devices, :dependent => :restrict_with_exception
  validates :name, :presence => true, :message => "Names are mandatory."
end
