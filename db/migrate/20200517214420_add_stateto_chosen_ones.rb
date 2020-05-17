class AddStatetoChosenOnes < ActiveRecord::Migration[6.0]
  def change
    add_column  :chosen_ones, :state, :string
  end
end
