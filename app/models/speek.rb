# frozen_string_literal: true

class Speek < ApplicationRecord
  belongs_to :user
  validates :content, presence: true
end
