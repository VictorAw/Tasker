class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.integer :task_duration, null: false
      t.datetime :deadline, null: false
      t.boolean :finished, null: false, default: false
      t.integer :manager_id, null: false
      t.string :title, null: false
      t.text :description

      t.timestamps
    end
  end
end
