class CreateTagItems < ActiveRecord::Migration
  def change
    create_table :tag_items do |t|
      t.belongs_to :tag
      t.belongs_to :item
    end
  end
end
