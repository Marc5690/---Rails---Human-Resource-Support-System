class AddSubdomainToCompany < ActiveRecord::Migration
  def change
    add_column :companies, :subdomain, :string

  end
end
