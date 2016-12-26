class CreatePredictions < ActiveRecord::Migration[5.0]
  def change
    create_table :predictions do |t|
      t.string :result_species
      t.references :flower, foreign_key: true

      t.timestamps
    end
  end
end
