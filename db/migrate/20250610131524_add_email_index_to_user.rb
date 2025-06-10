class AddEmailIndexToUser < ActiveRecord::Migration[8.0]
  def change
    add_index :users, :email, unique: true
    add_index :users, [ :provider, :provider_id ], unique: true
  end
end
