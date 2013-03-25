class AddTitleToTimeAndAttendances < ActiveRecord::Migration
  def change
    add_column :time_and_attendances, :title, :string

  end
end
