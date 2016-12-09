class CreateConcurses < ActiveRecord::Migration
  def change
    create_table :concurses do |t|
      t.string :titulo
      t.string :empresa
      t.string :area
      t.integer :salario
      t.string :educacion
      t.string :experiencia
      t.string :conocimiento
      t.text :descripcion

      t.timestamps null: false
    end
  end
end
