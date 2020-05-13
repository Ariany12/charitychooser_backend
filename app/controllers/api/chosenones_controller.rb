class Api::ChosenonesController < ApplicationController
  def index
    @chosenones = ChosenOne.all
    render 'index.json.jb'
  end
end
