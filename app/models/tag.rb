# == Schema Information
#
# Table name: tags
#
#  id       :integer          not null, primary key
#  name     :string(255)
#  longname :string(255)
#  icon     :string(255)
#

class Tag < ActiveRecord::Base

  has_many :tagitems
  has_many :items, through: :tagitems

end
