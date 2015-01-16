class AddUserIDtoSelection < ActiveRecord::Migration
  def change
  	add_column :selections, :user_id, :integer, null: false
  end
end
