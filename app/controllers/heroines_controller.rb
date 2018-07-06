class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
    # @powers = Power.all
    # @powers = Power.search(params[:search])
  end

  def new
    @heroine = Heroine.new
  end

  def show
    @heroine = Heroine.find(params[:id])
  end

  def create
    @heroine = Heroine.new(heroine_params)
    if @heroine.valid?
      @heroine.save
      redirect_to @heroine
    else
      render :new
    end
  end

  private
  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end
end
