# == Schema Information
#
# Table name: categories
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#
# Indexes
#
#  index_categories_on_name  (name)
#

class Category < ActiveRecord::Base

end
