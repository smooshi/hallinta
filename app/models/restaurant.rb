class Restaurant < ActiveRecord::Base
  belongs_to :company
  belongs_to :restaurant_type
  has_many :contact_persons, :dependent =>  :destroy
  has_many :restaurant_evaluations, :dependent => :destroy
  belongs_to :customer

  validates :name, presence: true
  validates :company_id, presence: true
  EMAIL_REGEX = /@/
  validates :email, :format => EMAIL_REGEX
end
