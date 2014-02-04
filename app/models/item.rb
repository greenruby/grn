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

class Item < ActiveRecord::Base

  belongs_to :edition
  belongs_to :reporter, class_name: 'User'
  belongs_to :category
  belongs_to :maintag, class_name: 'Tag'
  has_many :tagitems
  has_many :tags, through: :tagitems

end
