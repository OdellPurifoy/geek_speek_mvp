# frozen_string_literal: true

class Speek < ApplicationRecord
  belongs_to :user
  has_many :comments, as: :commentable
  has_rich_text :content
  validates :category, presence: true

  CATEGORIES = ['Front End', 'Back End', 'Artificial Intelligence', 'Cyber Security', 'Dev Ops',
                'Full Stack'].freeze
end
