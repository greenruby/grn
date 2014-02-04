# == Schema Information
#
# Table name: editions
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  pubdate    :datetime
#  edito      :string(255)
#  created_at :datetime
#  updated_at :datetime
#
# Indexes
#
#  index_editions_on_title  (title) UNIQUE
#

class Edition < ActiveRecord::Base

  has_many :edition_categories
  has_many :categories, through: :edition_categories

end
