class RemoveDateEndedIntegerFromProjects < ActiveRecord::Migration
  def change
remove_column :projects, :date_ended_integer
  end

  def up
    remove_column :projects, :date_ended_integer
      end

  def down
    add_column :projects, :date_ended_integer, :string
  end
end
