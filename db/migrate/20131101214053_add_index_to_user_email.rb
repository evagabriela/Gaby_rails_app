class AddIndexToUserEmail < ActiveRecord::Migration
  def change
    add_index :users, :email, unique: true  #add_indexis a Rails method that let you add an index on the email column of the users table 
  end
end
