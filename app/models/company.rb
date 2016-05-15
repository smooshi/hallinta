class Company < ActiveRecord::Base
  belongs_to :company_type
  has_many :contact_persons, :dependent => :destroy
  has_many :restaurants, :dependent => :destroy
  EMAIL_REGEX = /@/
  validates :email, :format => EMAIL_REGEX, :allow_blank => true
  validates :name, :presence => true, :message => "Names are mandatory."
  validates :phone_number, :allow_blank => true,
            :numericality => true,
            :length => { :minimum => 10, :maximum => 15 , :message => "You made a bad number. Shame on you."}
end
