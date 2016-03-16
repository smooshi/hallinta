class SoftwareInAgreement < ActiveRecord::Base
  belongs_to :agreement
  belongs_to :software

  validates :software_id, presence: true
  validates :agreement_id, presence: true
  validates :monthly_price, presence: true
end
