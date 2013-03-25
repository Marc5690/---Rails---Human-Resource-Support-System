class RemoveTaskFromTimeAndAttendance < ActiveRecord::Migration
  def up
    remove_column :time_and_attendances, :task
      end

  def down
    add_column :time_and_attendances, :task, :string
  end
end
