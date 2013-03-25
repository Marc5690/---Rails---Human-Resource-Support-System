class RemoveNumberOfTasksFromProjects < ActiveRecord::Migration
  def up
    remove_column :projects, :number_of_tasks
      end

  def down
    add_column :projects, :number_of_tasks, :integer
  end
end
