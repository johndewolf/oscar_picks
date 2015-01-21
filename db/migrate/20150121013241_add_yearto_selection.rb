class AddYeartoSelection < ActiveRecord::Migration
  def change
    add_column :selections, :year, :integer, null: false, default: 2015
  end
end
