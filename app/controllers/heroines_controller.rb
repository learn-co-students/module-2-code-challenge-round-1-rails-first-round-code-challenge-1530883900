class HeroinesController < ApplicationController

  before_action :fetch_heroine, only: [:show, :edit, :update, :destroy]

  def index
    @heroines = Heroine.all
  end

  def new
    @heroine = Heroine.new
  end

  def show
  end

  def create
    @heroine = Heroine.new(heroine_params)
    if @heroine.save
      redirect_to heroine_path(@heroine)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @heroine.update(heroine_params)
    if @heroine.save
      redirect_to heroine_path(@heroine)
    else
      render :edit
    end
  end

  def destroy
    @heroine.destroy
    redirect_to heroines_path
  end

  private

  def fetch_heroine
    @heroine = Heroine.find(params[:id])
  end

  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end
end
