class HeroinesController < ApplicationController
  before_action :set_heroine, only: [:show, :edit, :update, :delete]
  before_action :all_powers, only: [:index, :new, :create]

  def index
    @heroines = Heroine.all

    if params[:search]
      @heroines = Heroine.all.select do |heroine|
        heroine.power.name == params[:search].downcase
      end
    end
  end

  def new
    @heroine = Heroine.new
  end

  def create
    @heroine = Heroine.new(heroine_params)
    if @heroine.valid?
      @heroine = Heroine.create(heroine_params)
      redirect_to @heroine
    else
      render :new
    end
  end

  def show
  end

  private

  def set_heroine
    @heroine = Heroine.find(params[:id])
  end

  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end

  def all_powers
    @powers = Power.all
  end
end
