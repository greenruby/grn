# == Schema Information
#
# Table name: authorizations
#
#  id         :integer          not null, primary key
#  provider   :string(255)
#  username   :string(255)
#  uid        :string(255)
#  token      :string(255)
#  secret     :string(255)
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Authorization < ActiveRecord::Base

  belongs_to :user
  
end
