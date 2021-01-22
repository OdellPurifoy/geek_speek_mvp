# frozen_string_literal: true

class CreateCommnets < ActiveRecord::Migration[6.0]
  def change
    create_table :commnets do |t|
      t.references :user, null: false, foreign_key: true
      t.references :commentable, polymorphic: true, null: false
      t.integer :parent_id
      t.text :comment_content, null: false

      t.timestamps
    end
  end
end
