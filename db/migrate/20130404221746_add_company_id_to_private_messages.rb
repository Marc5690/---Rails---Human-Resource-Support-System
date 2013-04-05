class AddCompanyIdToPrivateMessages < ActiveRecord::Migration
  def change
    add_column :private_messages, :company_id, :integer

  end
end
