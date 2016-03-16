class Agreement < ActiveRecord::Base
  belongs_to :restaurant
  belongs_to :user
  has_many :devices, through: :device_in_agreements
  has_many :softwares, through: :software_in_agreements

  validates :restaurant_id, presence: true
  validates :user_id, presence: true
  validates :start_date, presence: true
  validates :agreement_length, presence: true
  validates :responsible_user_id, presence: true
end
