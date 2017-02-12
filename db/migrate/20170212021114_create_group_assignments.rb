class CreateGroupAssignments < ActiveRecord::Migration[5.0]
  def change
    create_table :group_assignments do |t|
      t.integer :user_id, null: false
      t.integer :group_id, null: false

      t.timestamps
    end
  end
end
