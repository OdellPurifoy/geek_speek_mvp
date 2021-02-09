# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :speeks, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_one_attached :avatar
  validates :email, :username, uniqueness: true
  validates :bio, length: { maximum: 500 }, allow_blank: true

  PROFESSIONS = ['Font End', 'Back End', 'Full Stack', 'Dev Ops', 'Cyber Security', 'Artificail Intelligence'].freeze
end
