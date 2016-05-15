class Restaurant < ActiveRecord::Base
  belongs_to :company
  belongs_to :restaurant_type
  has_one :agreement, :dependent =>  :restrict_with_exception
  has_many :contact_persons, :dependent =>  :destroy
  has_many :restaurant_evaluations, :dependent => :destroy
  has_one :customer, :dependent =>  :destroy

  validates :name, :presence => true
  validates :company_id, presence: true
  EMAIL_REGEX = /@/
  validates :email, :format => EMAIL_REGEX, :allow_blank => true
  validates :phone_number, :allow_blank => true,
            :numericality => true,
            :length => { :minimum => 10, :maximum => 15 , :message => "You made a bad number. Shame on you."}
end
