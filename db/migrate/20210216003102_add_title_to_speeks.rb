class AddTitleToSpeeks < ActiveRecord::Migration[6.0]
  def change
    add_column :speeks, :title, :string
  end
end
