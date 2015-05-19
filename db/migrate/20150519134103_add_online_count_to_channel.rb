class AddOnlineCountToChannel < ActiveRecord::Migration
  def change
    add_column :channels, :online_count, :integer, default: 0
  end
end
