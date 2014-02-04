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

class Edition < ActiveRecord::Base

  has_many :categories

end
