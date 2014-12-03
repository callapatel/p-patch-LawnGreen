class CreateTools < ActiveRecord::Migration
  def change
    create_table :tools do |t|
      t.string :name
      t.integer :quantity
      t.string :image

      t.timestamps
    end
  end
end
