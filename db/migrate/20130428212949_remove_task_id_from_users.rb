class RemoveTaskIdFromUsers < ActiveRecord::Migration
  def up
    remove_column :users, :task_id
      end

  def down
    add_column :users, :task_id, :integer
  end
end
