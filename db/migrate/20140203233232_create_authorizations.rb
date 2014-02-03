class CreateAuthorizations < ActiveRecord::Migration
  def change
    create_table :authorizations do |t|
      t.string :provider
      t.string :username
      t.string :uid
      t.string :token
      t.string :secret
      t.belongs_to :user

      t.timestamps
    end
  end
end
