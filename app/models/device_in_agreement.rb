class DeviceInAgreement < ActiveRecord::Base
  belongs_to :devices
  belongs_to :agreement

  validates :agreement_id, presence: true
  validates :device_id, presence: true
  validates_presence_of :monthly_price, :price_is_leasing => true
  validates_presence_of :total_price, :price_is_leasing => false

end
