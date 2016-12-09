class AddDetailsToUser < ActiveRecord::Migration
  def change
    add_column :users, :nombre, :string
    add_column :users, :apellidop, :string
    add_column :users, :apellidom, :string
    add_column :users, :fechanac, :date
    add_column :users, :ocupacion, :string
    add_column :users, :empresa, :string
  end
end
