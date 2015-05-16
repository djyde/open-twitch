class AddChannelDescriptionToUser < ActiveRecord::Migration
  def change
    add_column :users, :channel_description, :text
  end
end
