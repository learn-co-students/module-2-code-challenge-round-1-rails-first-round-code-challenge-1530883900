class PowersController < ApplicationController

  before_action :fetch_power, only: [:show, :edit, :update, :destroy]

  def index
    @powers = Power.all
  end

  def new
    @power = Power.new
  end

  def show
  end

  def create
    @power = Power.new(power_params)
    if @power.save
      redirect_to power_path(@power)
    else
      render :new
    end   
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def fetch_power
    @power = Power.find(params[:id])
  end

  def power_params
    params.require(:power).permit(:name, :description)
  end
end
