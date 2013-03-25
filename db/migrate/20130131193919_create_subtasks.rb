class CreateSubtasks < ActiveRecord::Migration
  def change
    create_table :subtasks do |t|
      t.string :title
      t.integer :percentage
      t.boolean :completed
      t.text :description

      t.timestamps
    end
  end
end
