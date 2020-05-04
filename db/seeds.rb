# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# require 'http'

# response = HTTP.get("http://data.orghunter.com/v1/charitysearch?user_key=be39a1ed56cff895e05b0bca8b7af4d5")

# p response.load



response = HTTP.get("http://data.orghunter.com/v1/charitysearch?user_key=#{Rails.application.credentials.news_api[:user_key]}&rows=10")


response.parse["data"].each do |charity|
  # Charity.create!(charityName: response.parse["data"][0]["charityName"]
  if charity["acceptingDonations"] == 1 

  p Charity.create!(charityName: charity["charityName"], url: charity["url"], donationUrl: charity["donationUrl"], state: charity["state"], city: charity["city"],
    zipCode: charity["zipCode"], score: charity["score"], category: charity["category"], eligibleCd: charity["eligibleCd"], 
    deductibilityCd: charity["deductibilityCd"], missionStatement: charity["missionStatement"]) 
  p 
  end
end


# Charity.create!(city: charity["city_name"], zip: charity["zipCode"])
# p Charity.create!(["charityName"],

#  "charityName"
#  "url"
#  "donationUrl"
#  "city"
#  "state"
#  "zipCode"
# t.integer "score"
#  "acceptingDonations"
#  "category"
#  "eligibleCd"
#  "deductibilityCd"
#  "missionStatement"