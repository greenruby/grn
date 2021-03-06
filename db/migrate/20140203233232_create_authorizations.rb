class CreateAuthorizations < ActiveRecord::Migration
  def change
    create_table :authorizations do |t|
      t.string :provider
      t.string :username
      t.string :uid
      t.string :token
      t.string :secret
      t.integer :user_id

      t.timestamps
    end
    add_index :authorizations, :user_id
  end
end
