class RemoveChannelTitleFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :channel_title, :string
  end
end
