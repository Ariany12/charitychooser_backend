class RenameColumn < ActiveRecord::Migration[6.0]
  def change
    rename_column :charities, :charityName, :charity_name
    rename_column :charities, :donationUrl, :donation_url
    rename_column :charities, :zipCode, :zip_code
    rename_column :charities, :acceptingDonations, :accepting_donations
    rename_column :charities, :deductibilityCd, :deductibility
    rename_column :charities, :missionStatement, :mission_statement
   
  end
end
