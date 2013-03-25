class RemoveUserIdFromTimeAndAttendance < ActiveRecord::Migration
  def up
    remove_column :time_and_attendances, :user_id
      end

  def down
    add_column :time_and_attendances, :user_id, :time_and_attendance
  end
end
