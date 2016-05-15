class CompanyType < ActiveRecord::Base
  has_many :companies, :dependent => :restrict_with_exception
  validates :name, :presence => true, :message => "Names are mandatory."
end
