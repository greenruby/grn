class EditionSerializer < ActiveModel::Serializer
  attributes :id, :title, :pubdate, :edito
  has_many :edition_categories, root: 'categories'
end
