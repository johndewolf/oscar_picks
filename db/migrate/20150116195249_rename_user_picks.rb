class RenameUserPicks < ActiveRecord::Migration
  def self.up
  	rename_table :user_picks, :selections
  end

  def self.down
  	rename_table :selections, :user_picks
  end
end
