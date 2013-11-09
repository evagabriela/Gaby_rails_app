class AddAdminToUsers < ActiveRecord::Migration
  def change
    add_column :users, :admin, :boolean, default: false  #without the default: false argument, admin will be nil by default which is still false but I am adding this to communicate my intention more clearly
  end
end
