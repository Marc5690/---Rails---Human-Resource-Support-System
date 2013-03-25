class AddStartDateToTask < ActiveRecord::Migration
  def change
    add_column :tasks, :start_date, :datetime

  end
end
