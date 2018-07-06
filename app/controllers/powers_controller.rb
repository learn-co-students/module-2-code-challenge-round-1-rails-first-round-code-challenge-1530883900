class PowersController < ApplicationController

  before_action :set_power, only: [:show, :edit, :update, :destoy]

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
      if @power.save
        redirect_to @power
      else
        render :new
      end
  end


  def edit
  end

  def update

  end

  def destroy
    @power.destoy
    redirect_to powers_path
  end

  private

  def set_power
    @power = Power.find(params[:id])
  end

  def power_params
    params.require(:power).permit(:name, :description)
  end

end
