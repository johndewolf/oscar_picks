class CreateUserPicks < ActiveRecord::Migration
  def change
    create_table :user_picks do |t|

      t.timestamps
    end
  end
end
