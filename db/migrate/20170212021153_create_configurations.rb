class CreateConfigurations < ActiveRecord::Migration[5.0]
  def change
    create_table :configurations do |t|
      t.time :workday_start, null: false
      t.time :workday_end, null: false

      t.timestamps
    end
  end
end
