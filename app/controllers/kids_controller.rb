class KidsController < ApplicationController
  def index
    @kids = Kid.all

    render json: { kids: @kids }
  end

  def new 
    @kid = Kid.new 
    @teams = Team.all 
  end 

  def create
    @kid = Kid.create(kid_params)
  
    if @kid.valid? 
      @kid.save 
      redirect_to kid_path(@kid)
    else 
      render :new 
      @kid.errors 
    end 

    render json: { kid: @kid }
  end

  private 

  def kid_params
  params.require(:kid).permit(:username, :description, :favorite_color, :age)
  end 

end
