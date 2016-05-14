class Device < ActiveRecord::Base
  belongs_to :device_type
  belongs_to :device_in_agreement

  validates :device_type_id, presence: true
  validates :purchase_day, presence: true
  validates :identifier, presence: true
  validates :leasing_price, :if => :leasing, presence: true
  validates :leasing_length, :if => :leasing, presence: true
end
