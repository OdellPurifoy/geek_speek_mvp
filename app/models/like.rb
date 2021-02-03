# frozen_string_literal: true

class Like < ApplicationRecord
  belongs_to :user
  belongs_to :speek
  validates :user_id, uniqueness: { scope: :speek_id }
end
