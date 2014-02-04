# == Schema Information
#
# Table name: tag_items
#
#  tag_id  :integer
#  item_id :integer
#
# Indexes
#
#  index_tag_items_on_tag_id_and_item_id  (tag_id,item_id)
#

class TagItem < ActiveRecord::Base

  belongs_to :tag
  belongs_to :item

end
