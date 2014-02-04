# == Schema Information
#
# Table name: items
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  url         :string(255)
#  description :string(255)
#  pubdate     :date
#  duration    :integer
#  quantity    :string(255)
#  reporter_id :integer
#  maintag_id  :integer
#  edition_id  :integer
#  category_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#
# Indexes
#
#  index_items_on_category_id  (category_id)
#  index_items_on_edition_id   (edition_id)
#  index_items_on_maintag_id   (maintag_id)
#  index_items_on_reporter_id  (reporter_id)
#

class Item < ActiveRecord::Base

  belongs_to :edition
  belongs_to :reporter, class_name: 'User'
  belongs_to :category
  belongs_to :maintag, class_name: 'Tag'
  has_many :tag_items
  has_many :tags, through: :tag_items

end
