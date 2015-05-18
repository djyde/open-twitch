class AddUserNameToAdmin < ActiveRecord::Migration
  def change
    add_column :admins, :username, :string, uniqueness: true
  end
end
