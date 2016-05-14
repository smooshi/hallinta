class Device < ActiveRecord::Base
  belongs_to :device_type
  has_one :device_in_agreement

  validates :device_type_id, presence: true
  validates :purchase_day, presence: true
  validates :identifier, presence: true, uniqueness: true
  validates :leasing_price, :if => :is_leased, presence: true
  validates :leasing_length, :if => :is_leased, presence: true
end
