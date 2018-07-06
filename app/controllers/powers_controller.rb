class PowersController < ApplicationController
  def index
    @powers = Power.all
  end

  def new
    @power = Power.new
  end

  def show
    @power = Power.find(params[:id])
  end
  
  def create
    @power = Power.new(power_params)
    if @power.save
      redirect_to @power
    else
      @powers = Power.all
      render :new
    end
  end

  private

  def power_params
    params.require(:power).permit(:name, :description)
  end
end
