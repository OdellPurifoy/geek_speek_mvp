# frozen_string_literal: true

class RemoveNullConstraintFromComments < ActiveRecord::Migration[6.0]
  def change
    change_column_null :comments, :user_id, true
  end
end
