class CreateAbsences < ActiveRecord::Migration
  def change
    create_table :absences do |t|
      t.date :date
      t.string :status
      t.text :reason
      t.string :type

      t.timestamps
    end
  end
end
