class HeroinesController < ApplicationController

  def index
    @heroines = Heroine.all
  end

  def new
    @heroine = Heroine.new
    @powers = Power.all
  end

  def create

    @heroine = Heroine.new(get_params)

    if @heroine.valid?
      @heroine.save
      redirect_to @heroine
    else
      render :new
    end

  end

  def show
    @heroine = find_by_heroine_id
  end


  private

  def find_by_heroine_id
    @heroine = Heroine.find(params[:id])
  end

  def get_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end
end
