class CreateTimeAndAttendances < ActiveRecord::Migration
  def change
    create_table :time_and_attendances do |t|
    #  t.integer :date
      t.integer :hours_worked
      t.string :task
      t.string :project

      t.timestamps
    end
  end
end
