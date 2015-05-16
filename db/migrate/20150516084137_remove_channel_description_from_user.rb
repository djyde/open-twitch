class RemoveChannelDescriptionFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :channel_description, :text
  end
end
