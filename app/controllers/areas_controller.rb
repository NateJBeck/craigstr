class AreasController < ApplicationController
  def index
    @area = Area.new
    @areas = Area.all
    @category = Category.new
    @categories = Category.all
  end

  def create
    @area = Area.new(area_params)
    
    if @area.save
      redirect_to areas_path
    else
      @areas = Area.all
      @category = Category.new
      @categories = Category.all
      render :index
    end
  end

  private

  def area_params
    params.require(:area).permit(:name)
  end
end
