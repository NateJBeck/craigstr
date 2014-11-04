class CategoriesController < ApplicationController
  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to :back
    else
      redirect_to root_path
    end
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end
end
