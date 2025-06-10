class DeleteIndexProviderWithProviderId < ActiveRecord::Migration[8.0]
  def change
    remove_index :users, [ :provider, :provider_id ]
  end
end
