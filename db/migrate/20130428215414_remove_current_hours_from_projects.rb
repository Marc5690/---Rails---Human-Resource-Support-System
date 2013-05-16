class RemoveCurrentHoursFromProjects < ActiveRecord::Migration
  def up
    remove_column :projects, :current_hours
      end

  def down
    add_column :projects, :current_hours, :integer
  end
end
