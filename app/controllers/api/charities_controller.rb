class Api::CharitiesController < ApplicationController
  def index
    p "BEFORE"
    p current_user  
    p "AFTER"

    if current_user
      @charities = Charity.all
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



  