class RemoveDateStartedFromProject < ActiveRecord::Migration
  def up
    remove_column :projects, :date_started
      end

  def down
    add_column :projects, :date_started, :integer
  end
end
