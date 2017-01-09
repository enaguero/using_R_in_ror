class AddStateToFlower < ActiveRecord::Migration[5.0]
  def change
    add_column :flowers,:state,:string,default: 'new'
  end
end
