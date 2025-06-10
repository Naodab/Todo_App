class RemoveProviderIdColumnUsers < ActiveRecord::Migration[8.0]
  def change
    remove_column :users, :provider_id
  end
end
