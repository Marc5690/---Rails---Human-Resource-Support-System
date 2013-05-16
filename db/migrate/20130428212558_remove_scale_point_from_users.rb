class RemoveScalePointFromUsers < ActiveRecord::Migration
  def up
    remove_column :users, :scale_point
      end

  def down
    add_column :users, :scale_point, :integer
  end
end
