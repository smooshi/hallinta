class Role < ActiveRecord::Base
  has_many :users, :dependent => :restrict_with_exception
end
