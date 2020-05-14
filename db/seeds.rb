
response = HTTP.get("http://data.orghunter.com/v1/charitysearch?user_key=#{Rails.application.credentials.news_api[:user_key]}&rows=5")


response.parse["data"].each do |charity|
  if charity["accepting_donations"] == 1 

    Charity.create!(charity_name: charity["charityName"], url: charity["url"], donation_url: charity["donationUrl"], state: charity["state"], city: charity["city"],
    zip_code: charity["zipCode"], score: charity["score"], category: charity["category"],deductibility: charity["deductibilityCd"], mission_statement: charity["missionStatement"]) 
  
  end
end

