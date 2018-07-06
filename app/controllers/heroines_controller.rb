class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def new
    @powers = Power.all
    @heroine = Heroine.new
  end

  def create
    @heroine = Heroine.new(heroine_params)
    if @heroine.valid?
      @heroine.save
      redirect_to heroine_path(@heroine)
    else
      flash[:error] = @heroine.errors.full_messages
      redirect_to new_heroine_path
    end
  end

  def show
    @heroine = Heroine.find(params[:id])
  end

  private
  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end

end
