class ItemSerializer < ActiveModel::Serializer
  attributes :id, :title, :url, :pubdate, :description, :subtitle, :tag, :icon

  def subtitle
    object.quantity || object.duration || nil
  end

  def tag
    object.maintag.name
  end

  def icon
    object.maintag.icon
  end

end
