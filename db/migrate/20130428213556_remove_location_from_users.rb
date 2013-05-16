class RemoveLocationFromUsers < ActiveRecord::Migration
  def up
    remove_column :users, :location
      end

  def down
    add_column :users, :location, :string
  end
end
