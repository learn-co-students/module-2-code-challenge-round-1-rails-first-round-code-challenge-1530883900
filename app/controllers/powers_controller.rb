class PowersController < ApplicationController
  
  before_action :fetch_power, only: %i[show]

  def index
    @powers = Power.all
  end

# Removing this b/c we have no create/edit/update functionality for powers
  # def new
  #   @power = Power.new
  # end

# Removing this b/c we have no create/edit/update functionality for powers
#   def create
#     @power = Power.create(power_params)
#     redirect_to @power
#   end

  def show
  end

# Removing this b/c we have no create/edit/update functionality for powers
#   def edit
#   end

# Removing this b/c we have no create/edit/update functionality for powers
  # def update
  #   @power.update(power_params)
  #   redirect_to @power
  # end

# Removing this b/c we have no destroy functionality for powers
  # def destroy
  #   @power.destroy
  #   redirect_to powers_path
  # end

  private

  def fetch_power
    @power = Power.find(params[:id])
  end

# Removing this b/c we have no create/edit/update functionality for powers
  # def power_params
  #   params.require(:power).permit(:name, :super_name)
  # end

end
