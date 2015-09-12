class CreateTobuys < ActiveRecord::Migration
  def change
    create_table :tobuys do |t|
      t.string :tobuy_item

      t.timestamps null: false
    end
  end
end
