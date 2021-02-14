# frozen_string_literal: true

class DropTableFavorites < ActiveRecord::Migration[6.0]
  def change
    drop_table :favorites do |t|
      t.integer 'user_id', null: false
      t.integer 'speek_id', null: false
      t.datetime 'created_at', precision: 6, null: false
      t.datetime 'updated_at', precision: 6, null: false
      t.index ['speek_id'], name: 'index_favorites_on_speek_id'
      t.index ['user_id'], name: 'index_favorites_on_user_id'
    end
  end
end
