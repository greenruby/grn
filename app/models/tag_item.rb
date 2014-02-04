# == Schema Information
#
# Table name: tag_items
#
#  id      :integer          not null, primary key
#  tag_id  :integer
#  item_id :integer
#

class TagItem < ActiveRecord::Base

  belongs_to :tag
  belongs_to :item

end
