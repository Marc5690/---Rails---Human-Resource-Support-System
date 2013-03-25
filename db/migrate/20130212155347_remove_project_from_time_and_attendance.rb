class RemoveProjectFromTimeAndAttendance < ActiveRecord::Migration
  def up
    remove_column :time_and_attendances, :project
      end

  def down
    add_column :time_and_attendances, :project, :string
  end
end
