class Company < ActiveRecord::Base
  belongs_to :company_type
  has_many :contact_persons
end
