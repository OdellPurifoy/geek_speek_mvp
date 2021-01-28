# frozen_string_literal: true

class Comment < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :commentable, polymorphic: true
  belongs_to :parent, optional: true, class_name: 'Comment'
  validates :comment_content, presence: true

  def comments
    Comment.where(commentable: commentable, parent_id: id)
  end
end
