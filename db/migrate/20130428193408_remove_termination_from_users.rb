class RemoveTerminationFromUsers < ActiveRecord::Migration
  def up
    remove_column :users, :termination
      end

  def down
    add_column :users, :termination, :integer
  end
end
