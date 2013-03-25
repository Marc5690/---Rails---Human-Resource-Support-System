class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.date :start_date
      t.date :end_date
      t.integer :estimated_hours
      t.integer :current_hours
      t.text :description

      t.timestamps
    end
  end
end
