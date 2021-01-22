# frozen_string_literal: true

class Speeks::CommentsController < CommentsController
  before_action :set_commentable

  private

  def set_commentable
    @commentable = Speek.find(params[:speek_id])
  end
end
