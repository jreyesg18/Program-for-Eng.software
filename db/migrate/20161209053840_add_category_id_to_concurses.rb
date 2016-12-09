class AddCategoryIdToConcurses < ActiveRecord::Migration
  def change
    add_column :concurses, :category_id, :integer
  end
end
