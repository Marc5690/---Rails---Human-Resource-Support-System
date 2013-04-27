class AddDateEndedToAbsence < ActiveRecord::Migration
  def change
    add_column :absences, :date_ended, :datetime

  end
end
