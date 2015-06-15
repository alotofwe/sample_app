class AddAdminToUsers < ActiveRecord::Migration
  def change
    add_column :users, :admin, :boolean, fefault: false
  end
end
