class CreateReservoirs < ActiveRecord::Migration[5.0]
  def change
    create_table :reservoirs do |t|
      t.string :name
      t.integer :storage
      t.integer :capacity

      t.timestamps
    end
  end
end
