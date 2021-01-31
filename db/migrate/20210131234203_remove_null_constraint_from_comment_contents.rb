# frozen_string_literal: true

class RemoveNullConstraintFromCommentContents < ActiveRecord::Migration[6.0]
  def change
    change_column_null :comments, :comment_content, true
  end
end
