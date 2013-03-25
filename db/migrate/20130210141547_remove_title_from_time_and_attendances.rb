class RemoveTitleFromTimeAndAttendances < ActiveRecord::Migration
  def up
    remove_column :time_and_attendances, :title
      end

  def down
    add_column :time_and_attendances, :title, :string
  end
end
