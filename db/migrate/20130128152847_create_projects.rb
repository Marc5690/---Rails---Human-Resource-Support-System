class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.integer :identification_number
      t.integer :date_started
      t.string :date_ended_integer
      t.integer :number_of_tasks

      t.timestamps
    end
  end
end
