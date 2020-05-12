
response = HTTP.get("http://data.orghunter.com/v1/charitysearch?user_key=#{Rails.application.credentials.news_api[:user_key]}&rows=5")


response.parse["data"].each do |charity|
  if charity["acceptingDonations"] == 1 

    Charity.create!(charityName: charity["charityName"], url: charity["url"], donationUrl: charity["donationUrl"], state: charity["state"], city: charity["city"],
    zipCode: charity["zipCode"], score: charity["score"], category: charity["category"],deductibilityCd: charity["deductibilityCd"], missionStatement: charity["missionStatement"]) 
  
  end
end

