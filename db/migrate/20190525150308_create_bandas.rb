class CreateBandas < ActiveRecord::Migration[5.2]
  def change
    create_table :bandas do |t|
      t.string :nome
      t.integer :ano
      t.string :genero
      t.string :pais
      t.string :image

      t.integer :nota

      t.timestamps
    end
  end
end
