class RemoveProjectIdFromProject < ActiveRecord::Migration
  def up
    remove_column :projects, :project_id
      end

  def down
    add_column :projects, :project_id, :integer
  end
end
