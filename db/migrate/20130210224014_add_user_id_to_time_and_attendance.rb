class AddUserIdToTimeAndAttendance < ActiveRecord::Migration
  def change
    add_column :time_and_attendances, :user_id, :integer

  end
end
