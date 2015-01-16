class AddFieldstoPicks < ActiveRecord::Migration
  def change
  	add_column :user_picks, :best_picture, :string, null: false
  	add_column :user_picks, :best_actor, :string, null: false
  end
end
