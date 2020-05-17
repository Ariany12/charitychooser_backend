class AddCharityNametoChosenOnes < ActiveRecord::Migration[6.0]
  def change
    add_column  :chosen_ones, :user_name, :string
  end
end
