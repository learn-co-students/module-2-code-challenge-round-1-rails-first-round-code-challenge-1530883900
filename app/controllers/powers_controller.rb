class PowersController < ApplicationController
  before_action :fetch_power, only: [:show]
  def index
    @powers = Power.all
  end

  def show
  end

  private
  def fetch_power
    @power = Power.find(params[:id])
  end
end
