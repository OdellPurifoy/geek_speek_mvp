class AddCategoryToSpeek < ActiveRecord::Migration[6.0]
  def change
    add_column :speeks, :category, :string
  end
end
