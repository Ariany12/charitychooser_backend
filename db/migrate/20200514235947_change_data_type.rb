class ChangeDataType < ActiveRecord::Migration[6.0]
  def change
    change_column :charities, :score, :string
    change_column :charities, :zip_code, :string
  end
end
