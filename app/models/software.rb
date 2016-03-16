class Software < ActiveRecord::Base
  belongs_to :agreement, through: :software_in_agreement
end
