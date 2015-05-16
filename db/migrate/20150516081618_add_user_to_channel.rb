class AddUserToChannel < ActiveRecord::Migration
  def change
    add_reference :channels, :user, index: true, foreign_key: true
  end
end
