class AddTaskIdToAbsence < ActiveRecord::Migration
  def change
    add_column :absences, :task_id, :integer

  end
end
