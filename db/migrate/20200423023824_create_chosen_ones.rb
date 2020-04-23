class CreateChosenOnes < ActiveRecord::Migration[6.0]
  def change
    create_table :chosen_ones do |t|
      t.integer :user_id
      t.integer :charity_id
      t.integer :donated_amount

      t.timestamps
    end
  end
end
