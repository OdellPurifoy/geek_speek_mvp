# frozen_string_literal: true

class Comment < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :commentable, polymorphic: true
  belongs_to :parent, optional: true, class_name: 'Comment'
  # validates :comment_content, presence: true

  def comments
    Comment.where(commentable: commentable, parent_id: id)
  end

  def destroy
    update(user: nil, comment_content: nil)
  end

  def deleted?
    user.nil?
  end

  # before_destroy :handle_children
  #
  # def handle_children
  #   child_comments.update_all(parent_id: parent_id)
  # end
  #
  # def child_comments
  #   Comment.where(parent: self)
  # end
end
