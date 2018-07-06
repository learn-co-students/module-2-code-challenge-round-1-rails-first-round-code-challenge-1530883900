class HeroinesController < ApplicationController
  before_action :set_heroine, only: :show

  def index
    @heroines = Heroine.all
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
      redirect_to heroine_path(@heroine)
    else
      render :new
    end
  end

  private

  def heroine_params
    params.require(:heroine).permit(:name, :power_id, :super_name)
  end

  def set_heroine
    @heroine = Heroine.find(params[:id])
  end
end
