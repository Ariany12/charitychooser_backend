class Api::CharitiesController < ApplicationController
  def index 
   
    
    if current_user
     
      @charities = Charity.where('LOWER(state) LIKE ?', ("%#{params[:state]}%").downcase).where('LOWER(city) LIKE ?', ("%#{params[:city]}%").downcase).where('LOWER(charity_name) LIKE ?', ("%#{params[:name]}%").downcase).where("score LIKE ?", "%#{params[:score]}%").where("zip_code LIKE ?", "%#{params[:zip]}%").where("deductibility LIKE ?", "%#{params[:deductibility]}%")
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


  