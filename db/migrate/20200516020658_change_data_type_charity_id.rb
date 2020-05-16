class ChangeDataTypeCharityId < ActiveRecord::Migration[6.0]
  def change
    change_column :chosen_ones, :charity_id, :string
  end
end
