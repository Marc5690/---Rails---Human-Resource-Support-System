class AddEstimatedHoursToProject < ActiveRecord::Migration
  def change
    add_column :projects, :estimated_hours, :integer

  end
end
