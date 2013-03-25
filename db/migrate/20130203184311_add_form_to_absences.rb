class AddFormToAbsences < ActiveRecord::Migration
  def change
    add_column :absences, :form, :string

  end

  
end
