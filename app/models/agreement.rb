class Agreement < ActiveRecord::Base
  belongs_to :restaurant
  belongs_to :user

  has_many :devices, :through => :device_in_agreements, :dependent => :restrict_with_exception
  has_many :software, :through => :software_in_agreements, :dependent => :restrict_with_exception

  validates :restaurant_id, presence: true
  validates :user_id, presence: true
  validates :start_date, presence: true
  validates :agreement_length, presence: true
  validates :responsible_user_id, presence: true

  def agreement_state
    if (agreement_length == 0)
      return true
    else
      return false
    end
  end
end
