class Company < ActiveRecord::Base
  belongs_to :company_type
  has_many :contact_persons, :dependent => :destroy
  has_many :restaurants, :dependent => :destroy

  EMAIL_REGEX = /@/
  validates :email, :format => EMAIL_REGEX
  validates :name, :presence => true
end
