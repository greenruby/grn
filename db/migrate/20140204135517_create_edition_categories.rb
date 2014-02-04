class CreateEditionCategories < ActiveRecord::Migration
  def change
    create_table :edition_categories, :id => false do |t|
      t.integer :edition_id
      t.integer :category_id
    end
    add_index :edition_categories, [:edition_id, :category_id]
  end
end
