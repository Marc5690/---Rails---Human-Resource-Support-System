class AddColumnToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :date_ended, :datetime
  end
end
