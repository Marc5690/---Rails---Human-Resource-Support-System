class AddTaskIdToTimeAndAttendance < ActiveRecord::Migration
  def change
    add_column :time_and_attendances, :task_id, :integer

  end
end
