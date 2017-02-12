class CreateTaskAssignments < ActiveRecord::Migration[5.0]
  def change
    create_table :task_assignments do |t|
      t.integer :user_id, null: false
      t.integer :task_id, null: false

      t.timestamps
    end

    add_index :user_id
    add_index :task_id
  end
end
