# == Schema Information
#
# Table name: edition_categories
#
#  id          :integer          not null, primary key
#  edition_id  :integer
#  category_id :integer
#
# Indexes
#
#  index_edition_categories_on_edition_id_and_category_id  (edition_id,category_id)
#

class EditionCategory < ActiveRecord::Base
  belongs_to :edition
  belongs_to :category
  has_many :items
end
