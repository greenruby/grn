class Tag < ActiveRecord::Base

  has_many :tagitems
  has_many :items, through: :tagitems

end
