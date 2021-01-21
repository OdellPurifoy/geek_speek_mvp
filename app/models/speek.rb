# frozen_string_literal: true

class Speek < ApplicationRecord
  belongs_to :user
  has_rich_text :content
  validates :content, :category, presence: true

  CATEGORIES = ['Front End', 'Back End', 'Artificial Intelligence', 'Cyber Security', 'Dev Ops',
                'Full Stack'].freeze
end
