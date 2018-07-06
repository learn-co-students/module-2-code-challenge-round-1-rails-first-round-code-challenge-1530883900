class HeroinesController < ApplicationController

  def index
    if params[:q]
      @heroines = Heroine.find_by_power(params[:q])
    else
      @heroines = Heroine.all
    end
  end

  def show
    @heroine = Heroine.find(params[:id])
  end

  def new
    @powers = Power.all
    @heroine = Heroine.new
  end

  def create
    @powers = Power.all
    @heroine = Heroine.new(heroine_params(:name, :super_name, :power_id))
    if @heroine.save
      redirect_to @heroine
    else
      flash[:notice] = "Invalid Input"
      render :new
    end
  end

  private
  def heroine_params(*args)
    params.require(:heroine).permit(args)
  end
end
