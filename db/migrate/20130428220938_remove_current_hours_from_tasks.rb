class RemoveCurrentHoursFromTasks < ActiveRecord::Migration
  def up
    remove_column :tasks, :current_hours
      end

  def down
    add_column :tasks, :current_hours, :integer
  end
end
