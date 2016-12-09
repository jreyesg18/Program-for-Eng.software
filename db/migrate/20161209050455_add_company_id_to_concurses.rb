class AddCompanyIdToConcurses < ActiveRecord::Migration
  def change
    add_column :concurses, :company_id, :integer
  end
end
