class HeroinesController < ApplicationController
  before_action :fetch_heroine, only: [:show]

  def index
    @heroines = Heroine.all
    if params[:search]
      @heroines = Heroine.search(params[:search])
    end
  end

  def show
  end

  def new
    @heroine = Heroine.new
  end

  def create
    @heroine = Heroine.new(heroine_params)
    if @heroine.save
      redirect_to @heroine
    else
      render :new
    end
  end

  private
  def fetch_heroine
    @heroine = Heroine.find(params[:id])
  end

  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end
end
