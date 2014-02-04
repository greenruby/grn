class EditionCategorySerializer < ActiveModel::Serializer

  self.root = 'Categories'

  attributes :title, :description
  has_many :items

  def title
    object.category.name
  end

  def description
    object.category.description
  end

end
