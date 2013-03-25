class RemoveStartDateFromTask < ActiveRecord::Migration
  def up
    remove_column :tasks, :start_date
      end

  def down
    add_column :tasks, :start_date, :date
  end
end
