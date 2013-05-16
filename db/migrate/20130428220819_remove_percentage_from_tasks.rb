class RemovePercentageFromTasks < ActiveRecord::Migration
  def up
    remove_column :tasks, :percentage
      end

  def down
    add_column :tasks, :percentage, :integer
  end
end
