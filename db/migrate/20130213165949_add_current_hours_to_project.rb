class AddCurrentHoursToProject < ActiveRecord::Migration
  def change
    add_column :projects, :current_hours, :integer

  end
end
