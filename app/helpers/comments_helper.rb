# frozen_string_literal: true

module CommentsHelper
  def reply_to_comment_id(comment, nesting, max_nesting)
    # Use comment as parent if unlimited nesting allowed
    # or if its inside allowed nesting
    if max_nesting.blank? || nesting < max_nesting
      comment.id
    else
      # Otherwise use the comments parent and nest
      # the new comment as a sibling
      comment.parent_id
    end
  end
end
