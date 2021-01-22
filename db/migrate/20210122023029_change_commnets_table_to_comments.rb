# frozen_string_literal: true

class ChangeCommnetsTableToComments < ActiveRecord::Migration[6.0]
  def change
    rename_table :commnets, :comments
  end
end
