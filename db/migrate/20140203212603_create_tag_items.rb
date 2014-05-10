class CreateTagItems < ActiveRecord::Migration
  def change
    create_table :tag_items, :id => false do |t|
      t.integer :tag_id
      t.integer :item_id
    end
    add_index :tag_items, [:tag_id, :item_id]

  end
end
