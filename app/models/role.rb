class Role < ActiveRecord::Base
  has_many :users, :dependent => :restrict_with_exception
  validates :name, :presence => true, :message => "Names are mandatory."
end
