class AddGameToChannel < ActiveRecord::Migration
  def change
    add_reference :channels, :game, index: true, foreign_key: true
  end
end
