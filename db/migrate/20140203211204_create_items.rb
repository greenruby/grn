class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.string :url
      t.string :description
      t.date :pubdate
      t.integer :duration
      t.string :quantity
      t.integer :reporter_id
      t.integer :maintag_id
      t.integer :edition_category_id

      t.timestamps
    end
    add_index :items, :reporter_id
    add_index :items, :maintag_id
    add_index :items, :edition_category_id

  end
end
