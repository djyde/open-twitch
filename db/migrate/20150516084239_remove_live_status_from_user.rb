class RemoveLiveStatusFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :live_status, :boolean
  end
end
