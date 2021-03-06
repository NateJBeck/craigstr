class CategoriesController < ApplicationController
  def create
    @area = find_area_from_url
    @category = @area.categories.new(category_params)

    if @category.save
      redirect_to area_path(@area)
    else
      redirect_to :back
    end
  end

  def show
    @category = Category.find(params[:id])
    @post = Post.new
    @posts = Post.where(category_id: @category.id)
  end

  private

  def category_params
    params.require(:category).permit(:name, :area_id)
  end

  def find_area_from_url
    Area.find(params[:area_id])
  end
end
