class CreateEditions < ActiveRecord::Migration
  def change
    create_table :editions do |t|
      t.string :title
      t.datetime :pubdate
      t.string :edito

      t.timestamps
    end
  end
end
