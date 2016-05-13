class Device < ActiveRecord::Base
  belongs_to :device_type
  belongs_to :device_in_agreement

  validates :device_type_id, presence: true
  validates :purchase_day, presence: true
  validates :is_leased, presence: true
  validates :identifier, presence: true
end
