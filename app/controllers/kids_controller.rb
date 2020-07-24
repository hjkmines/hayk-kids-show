class KidsController < ApplicationController
  def index
    @kids = Kid.all

    render json: { kids: @kids }
  end

  def create
    @kid = Kid.create(kid_params)
  
    render json: { kid: @kid }
  end

  private 

  def kid_params
  params.require(:kid).permit(:username, :description, :favorite_color, :age)
  end 

end
