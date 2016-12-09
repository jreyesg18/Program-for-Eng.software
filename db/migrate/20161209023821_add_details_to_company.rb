class AddDetailsToCompany < ActiveRecord::Migration
  def change
    add_column :companies, :compania, :string
    add_column :companies, :codigo, :integer
  end
end
