class HeroinesController < ApplicationController

  before_action :fetch_heroine, only: %i[show]

  def index
    @heroines = Heroine.all
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

  def show
  end

# Removing this b/c our app doesn't allow a user to update a heroine.
#   def edit
#   end

# Removing this b/c our app doesn't allow a user to update a heroine.
#   def update
#     @heroine.update(heroine_params)
#     redirect_to @heroine
#   end

# Removing this b/c our app doesn't allow a user to destroy a heroine.
#   def destroy
#     @heroine.destroy
#     redirect_to heroines_path
#   end

  private

  def fetch_heroine
    @heroine = Heroine.find(params[:id])
  end

  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end

end
