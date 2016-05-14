class DeviceInAgreement < ActiveRecord::Base
  belongs_to :device
  belongs_to :agreement

  validates :agreement_id, presence: true
  validates :device_id, presence: true
  validates_presence_of :monthly_price, :if => :price_is_leasing
  validates_presence_of :total_price, :unless => :price_is_leasing
end
