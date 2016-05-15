class ContactPerson < ActiveRecord::Base
  belongs_to :restaurant
  belongs_to :company

  validates :name, :presence => true
  EMAIL_REGEX = /@/
  validates :email, :presence => true, :format => EMAIL_REGEX
  validates :phone_number,:presence => true,
            :numericality => true,
            :length => { :minimum => 10, :maximum => 15 }
end