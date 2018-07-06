class PowersController < ApplicationController
  before_action :get_power, only: :show

  def index
    @powers = Power.all
  end

  def show
  end

  def new
    @power = Power.new
  end

  def create
    @power = Power.new(power_params)
    if @power.valid?
      @power.save
      redirect_to @power
    else
      render :new
    end
  end

  private

  def get_power
    @power = Power.find(params[:id])
  end

  def power_params
    params.require(:power).permit(:name, :description)
  end
end
