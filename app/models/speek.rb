# frozen_string_literal: true

class Speek < ApplicationRecord
  belongs_to :user
  has_many :comments, as: :commentable
  has_many :likes
  has_many :favorites
  has_rich_text :content
  validates :category, :title, presence: true

  CATEGORIES = ['Front End', 'Back End', 'Artificial Intelligence', 'Cyber Security', 'Dev Ops',
                'Full Stack'].freeze

  def liked?(user)
    !!likes.find { |like| like.user_id == user.id }
  end

  def favorite?(user)
    !!favorites.find { |favorite| favorite.user_id == user.id }
  end
end
