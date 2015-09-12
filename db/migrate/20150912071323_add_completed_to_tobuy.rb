class AddCompletedToTobuy < ActiveRecord::Migration
  def change
  	add_column :tobuys, :completed, :boolean
  end
end
