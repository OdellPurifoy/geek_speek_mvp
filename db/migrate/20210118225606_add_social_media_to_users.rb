class AddSocialMediaToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :facebook_handle, :string
    add_column :users, :twitter_handle, :string
    add_column :users, :instagram_handle, :string
    add_column :users, :linked_in, :string
  end
end
