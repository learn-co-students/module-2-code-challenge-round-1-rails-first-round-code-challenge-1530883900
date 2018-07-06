class HeroinesController < ApplicationController
  before_action :get_heroine, only: :show

  def index
    @heroines = Heroine.all
    @powers = Power.all
  end

  def show
  end

  def new
    @heroine = Heroine.new
  end

  def create
    @heroine = Heroine.new(heroine_params)
    if @heroine.valid?
      @heroine.save
      redirect_to @heroine
    else
      flash[:alert] = "The Super heroine name is already taken, please try again."
      render :new
    end
  end

  private

  def get_heroine
    @heroine = Heroine.find(params[:id])
  end

  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end

end
