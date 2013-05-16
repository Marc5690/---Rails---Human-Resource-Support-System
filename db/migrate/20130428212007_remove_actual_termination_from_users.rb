class RemoveActualTerminationFromUsers < ActiveRecord::Migration
  def up
    remove_column :users, :actual_termination
      end

  def down
    add_column :users, :actual_termination, :integer
  end
end
