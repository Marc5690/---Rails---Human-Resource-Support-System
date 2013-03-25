class AddProjectIdToTimeAndAttendance < ActiveRecord::Migration
  def change
    add_column :time_and_attendances, :project_id, :integer

  end
end
