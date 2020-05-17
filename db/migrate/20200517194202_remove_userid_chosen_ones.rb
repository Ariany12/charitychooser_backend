class RemoveUseridChosenOnes < ActiveRecord::Migration[6.0]
  def change
    remove_column :chosen_ones, :user_id, :integer
  end
end
