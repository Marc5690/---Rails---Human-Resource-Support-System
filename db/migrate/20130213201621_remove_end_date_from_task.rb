class RemoveEndDateFromTask < ActiveRecord::Migration
  def up
    remove_column :tasks, :end_date
      end

  def down
    add_column :tasks, :end_date, :date
  end
end
