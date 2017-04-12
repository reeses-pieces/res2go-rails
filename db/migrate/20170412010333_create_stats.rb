class CreateStats < ActiveRecord::Migration[5.0]
  def change
    create_table :stats do |t|
      t.integer :user_id
      t.integer :reservoir_id
      t.integer :min
      t.integer :max

      t.timestamps
    end
  end
end
