class CreateFlowers < ActiveRecord::Migration[5.0]
  def change
    create_table :flowers do |t|
      t.float :sepal_length
      t.float :sepal_width
      t.float :petal_length
      t.float :petal_width
      t.references :species, foreign_key: true

      t.timestamps
    end
  end
end
