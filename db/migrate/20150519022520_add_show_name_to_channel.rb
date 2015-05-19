class AddShowNameToChannel < ActiveRecord::Migration
  def change
    add_column :channels, :show_name, :string
  end
end
