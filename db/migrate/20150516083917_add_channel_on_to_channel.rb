class AddChannelOnToChannel < ActiveRecord::Migration
  def change
    add_column :channels, :channel_on, :boolean, default: false
  end
end
