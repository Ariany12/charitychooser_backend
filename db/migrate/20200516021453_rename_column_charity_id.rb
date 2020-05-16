class RenameColumnCharityId < ActiveRecord::Migration[6.0]
  def change
    rename_column :chosen_ones, :charity_id, :charity_name
  end
end
