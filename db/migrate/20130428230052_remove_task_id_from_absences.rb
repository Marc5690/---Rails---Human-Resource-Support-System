class RemoveTaskIdFromAbsences < ActiveRecord::Migration
  def up
    remove_column :absences, :task_id
      end

  def down
    add_column :absences, :task_id, :integer
  end
end
