class WelcomeController < ApplicationController
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
  end

  private

  def farm_params
    params.requre(:farm).permit(:title, :decription)
  end

  def find_farm
    @farms = Farm.find(params [:id])
  end

  # def store
  # end
end
