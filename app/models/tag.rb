# == Schema Information
#
# Table name: tags
#
#  id       :integer          not null, primary key
#  name     :string(255)
#  longname :string(255)
#  icon     :string(255)
#
# Indexes
#
#  index_tags_on_name  (name)
#

class Tag < ActiveRecord::Base

  has_many :tag_items
  has_many :items, through: :tag_items

end
