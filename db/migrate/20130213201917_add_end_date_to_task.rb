class AddEndDateToTask < ActiveRecord::Migration
  def change
    add_column :tasks, :end_date, :datetime

  end
end
