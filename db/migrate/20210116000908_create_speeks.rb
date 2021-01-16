# frozen_string_literal: true

class CreateSpeeks < ActiveRecord::Migration[6.0]
  def change
    create_table :speeks do |t|
      t.text :content, null: false, default: ''
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
