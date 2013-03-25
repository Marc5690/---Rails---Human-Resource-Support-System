class AddDateToAbsences < ActiveRecord::Migration
  def change
    add_column :absences, :date, :datetime

  end
end
