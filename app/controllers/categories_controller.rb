class CategoriesController < ApplicationController
  def index
    @categories = Category.all.order("position")
  end

  def show
    @category = Category.find_by_name(params[:id])
    @categories = Category.all.order("position")
    @skills = Skill.where(category_id: @category.id).order("position")
  end
end
