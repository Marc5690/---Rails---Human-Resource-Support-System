class AddCompanyIdToSkills < ActiveRecord::Migration
  def change
    add_column :skills, :company_id, :integer

  end
end
