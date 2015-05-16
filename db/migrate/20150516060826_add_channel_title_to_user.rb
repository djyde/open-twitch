class AddChannelTitleToUser < ActiveRecord::Migration
  def change
    add_column :users, :channel_title, :string
  end
end
