class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.string :url
      t.string :description
      t.date :pudate
      t.integer :duration
      t.string :quantity
      t.belongs_to :user
      t.belongs_to :edition
      t.belongs_to :category

      t.timestamps
    end
  end
end
