class RemoveEstimatedHoursFromProjects < ActiveRecord::Migration
  def up
    remove_column :projects, :estimated_hours
      end

  def down
    add_column :projects, :estimated_hours, :integer
  end
end
