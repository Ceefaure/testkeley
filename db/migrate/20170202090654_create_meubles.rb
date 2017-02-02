class CreateMeubles < ActiveRecord::Migration[5.0]
  def change
    create_table :meubles do |t|
      t.string :nom
      t.integer :code
      t.text :description
      t.integer :tarif
      t.integer :poids
      t.references :catalogue, foreign_key: true

      t.timestamps
    end
  end
end
