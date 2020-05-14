class Api::CharitiesController < ApplicationController
  def index
     charity_name = params[:name]
     state = params[:state]
     city = params[:city]
     score = params[:score]
     deductibility = params[:ded]
    

    if current_user
      # @charities = Charity.where("charity_name LIKE ?", "%#{charity_name}%" AND "city LIKE ?", "%#{state}%")
      @charities = Charity.where("charity_name LIKE ? AND city LIKE ?", "%#{charity_name}%","%#{state}%")
         
        #OR  state LIKE ? OR zip_code LIKE ? OR score LIKE ? OR category LIKE ? OR deductibility", "%"
    else
      @charities = []
    end
    render 'index.json.jb'
  end

  def show
    if current_user
      @charity = Charity.find_by(id: params["id"])
    else
      @charity = []
    end
    render 'show.json.jb'
  end
end



  