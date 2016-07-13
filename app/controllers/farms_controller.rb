class FarmsController < ApplicationController
  before_action :find_farm, only: [:show, :edit, :update, :destroy]

  def index
    @farms = Farm.all.order("created_at DESC")
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


def edit
end

def update
  if @farms.update(farm_params)
    redirect_to @farms
  else
    render 'edit'
  end
end

def destroy
  @farms.destroy
  redirect_to root_path, notice: "Successfully deleted farm"
end

private

def farm_params
  params.require(:farm).permit(:address, :hours, :title, :description)
end

def find_farm
  @farms = Farm.find(params[:id])
end
end
