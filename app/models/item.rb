class Item < ActiveRecord::Base
  
  belongs_to :edition
  belongs_to :user, as: 'reporter'
  belongs_to :category
  belongs_to :tag, as: 'maintag'
  has_many :tagitems
  has_many :tags, through: :tagitems

end
