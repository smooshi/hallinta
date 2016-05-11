class ContactPerson < ActiveRecord::Base
  belongs_to :restaurant
  belongs_to :company

  validates :name, presence: true
  validates :company_id, presence: true
end