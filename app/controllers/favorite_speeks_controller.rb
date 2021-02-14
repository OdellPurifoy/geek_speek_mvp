# frozen_string_literal: true

class FavoriteSpeeksController < ApplicationController
  before_action :authenticate_user!
  before_action :set_speek, only: %i[create destroy]

  def index
    @favorites = current_user.favorited_speeks
  end

  def create
    if Favorite.create(favorited: @speek, user: current_user)
      redirect_to @speek, notice: 'Speek has been favorited!'
    else
      redirect_to @speek, alert: 'Something went wrong...'
    end
  end

  def destroy
    Favorite.where(favorited_id: @speek.id, user_id: current_user.id).first.destroy
    redirect_to @speek, notice: 'Speek is no longer in favorites'
  end

  private

  def set_speek
    @speek = Speek.find(params[:speek_id] || params[:id])
  end
end
