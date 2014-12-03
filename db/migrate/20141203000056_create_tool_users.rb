class CreateToolUsers < ActiveRecord::Migration
  def change
    create_table :tool_users do |t|
      t.integer :tool_id
      t.integer :user_id

      t.timestamps
    end
  end
end
