class AddShowOnToChannel < ActiveRecord::Migration
  def change
    add_column :channels, :show_on, :boolean, default: false
  end
end
