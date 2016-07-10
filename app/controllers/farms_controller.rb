class FarmsController < ApplicationController
  before_action :find_farm, only: [:show, :edit, :update, :destroy]
  def index
  end

  def show
  end

  def new
    @farms = Farm.new
  end

  def create
    @farms = Farm.new(farm_params)

    if @farms.save
      redirect_to @farms, notice: "Success, you have added a farm"
    else
      render 'new'
    end
  end
end

private

def farm_params
  params.require(:farm).permit(:title, :decription)
end

def find_farm
  @farms = Farm.find(params [:id])
end
