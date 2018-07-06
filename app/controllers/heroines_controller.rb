class HeroinesController < ApplicationController
  before_action :set_heroine, only: [:show, :edit, :update, :destoy]

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
      if @heroine.valid?
        @heroine.save
        redirect_to @heroine
      else
        render :new
      end
  end


  def edit
  end

  def update

  end

  def destroy
    @heroine.destoy
    redirect_to heroines_path
  end

  private

  def set_heroine
    @heroine = Heroine.find(params[:id])
  end

  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id, :search)
  end

end
