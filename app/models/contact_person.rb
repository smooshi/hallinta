class ContactPerson < ActiveRecord::Base
  belongs_to :restaurant
  belongs_to :company

  validates :name, presence: true
  EMAIL_REGEX = /@/
  validates :email, :presence => true, :format => EMAIL_REGEX
end