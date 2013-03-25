class AddDateToTimeAndAttendances < ActiveRecord::Migration
  def change
    add_column :time_and_attendances, :date, :datetime

  end
end
