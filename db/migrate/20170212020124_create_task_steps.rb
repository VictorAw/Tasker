class CreateTaskSteps < ActiveRecord::Migration[5.0]
  def change
    create_table :task_steps do |t|
      t.integer :task_id, null: false
      t.string :title, null: false
      t.text :description
      t.boolean :finished, null: false, default: false

      t.timestamps
    end

    add_index :task_steps, :task_id
  end
end
