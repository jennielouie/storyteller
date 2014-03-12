class CreateIdentities < ActiveRecord::Migration
  def change
    create_table :identities do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :password_confirmation
      t.string :password_digest
      t.timestamps
    end
  end
end
