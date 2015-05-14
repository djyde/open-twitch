class AddPicToGames < ActiveRecord::Migration
  def change
    add_column :games, :pic, :string
  end
end
