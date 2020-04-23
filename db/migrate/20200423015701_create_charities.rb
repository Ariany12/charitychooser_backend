class CreateCharities < ActiveRecord::Migration[6.0]
  def change
    create_table :charities do |t|
      t.string :charityName
      t.string :url
      t.string :donationUrl
      t.string :city
      t.string :state
      t.integer :zipCode
      t.integer :score
      t.string :acceptingDonations
      t.string :category
      t.string :eligibleCd
      t.string :deductibilityCd
      t.string :missionStatement
      
      t.timestamps
    end
  end
end
