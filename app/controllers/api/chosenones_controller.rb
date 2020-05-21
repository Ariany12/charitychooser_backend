class Api::ChosenonesController < ApplicationController
  def index
    @chosenones = ChosenOne.all
    render 'index.json.jb'
  end


  def create
    @chosenones = ChosenOne.new(
      charity_name: params[:name],
      state: params[:state],
      user_name: params[:user_name],
      donated_amount: params[:donated_amount]
    )
    if @chosenones.save
      render json: {message: "you create a new product in your db"}
    else 
      render json: {errors: @chosenones.errors.full_messages}
    end
  end

end
