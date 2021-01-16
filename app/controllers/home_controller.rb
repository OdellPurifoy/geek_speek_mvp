# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @speeks = Speek.all.order('created_at DESC')
  end
end
