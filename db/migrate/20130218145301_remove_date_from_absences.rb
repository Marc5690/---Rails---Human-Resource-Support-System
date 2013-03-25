class RemoveDateFromAbsences < ActiveRecord::Migration
  def up
    remove_column :absences, :date
      end

  def down
    add_column :absences, :date, :date
  end
end
