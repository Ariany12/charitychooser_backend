class Api::CharitiesController < ApplicationController
  def index
    #get the data from api
    # state = [:state]
    # city = params[:city]
    # score = params [:score]
    #acceptingDonations = 1 #accepting donations = 1 / no = 0
    # deductibilityCd = [:num] # 0 or 1
    
    # response = HTTP.get("http://data.orghunter.com/v1/charitysearch?user_key=#{Rails.application.credentials.news_api[:user_key]}&rows=10")
    
    # response = HTTP.get("http://data.orghunter.com/v1/charitysearch?user_key=#{Rails.application.credentials.news_api[:user_key]}&state=#{state}&city=#{city}&acceptingDonations=1&score=#{score}&deductibilityCd=#{num}")

    # send that data to the view

    # @charities = response.parse
    @charities = Charity.all
    render 'index.json.jb'
  end
end



  # response = HTTP.get("http://data.orghunter.com/v1/charitysearch?user_key=be39a1ed56cff895e05b0bca8b7af4d5")

    
  #   HTTP.get("http://newsapi.org/v2/everything?q=#{search_term}&from=2020-02-24&sortBy=publishedAt&apiKey=#{Rails.application.credentials.news_api[:api_key]}")